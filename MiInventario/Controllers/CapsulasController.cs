﻿using MiInventario.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using System.Globalization;
using MiInventario.Code;
using System.Threading.Tasks;
using System.Web.UI.DataVisualization.Charting;
using System.IO;
using System.Web.UI.WebControls;
using System.Drawing;

namespace MiInventario.Controllers
{
    [Authorize]
    public class CapsulasController : BaseController
    {
        [HttpGet]
        public ActionResult InterestsCharts()
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var reproduccionesDB = db.ReproduccionesItems
                .Where(p => p.Reproducciones.IdUsuario == user)
                .Select(s => s.ItemID)
                .Distinct()
                .ToList();

            CapsulesInterestsChartsViewModel model = new CapsulesInterestsChartsViewModel();
            model.Grouping = DateGrouping.Week;
            model.Accumulate = true;
            model.ViewableItems = ItemsXml.Where(p => reproduccionesDB.Contains(p.ItemID)).Select(q => new { q.ItemID, Description = q.Description() }).ToDictionary(r => r.ItemID, s => s.Description);

            return View(model);
        }

        [HttpGet]
        public ActionResult _InterestsChartTitle(DateGrouping grouping, string itemID, bool accumulative)
        {
            var model = new ChartTitleViewModel();
            model.Grouping = grouping;
            model.Item = new ItemViewModel() { CurrentItem = ItemsXml.SingleOrDefault(p => p.ItemID == itemID) };
            model.Accumulative = accumulative;

            return PartialView("_InterestsChartTitle", model);
        }

        [HttpGet]
        public ActionResult InterestsDateItemChart(DateGrouping grouping, string itemID, bool accumulate)
        {
            DateTime inicio = DateTime.Now;

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var reproduccionesDB = db.ReproduccionesItems.Where(p => p.Reproducciones.IdUsuario == user)
                .GroupBy(z => new { z.Reproducciones.Fecha, z.Reproducciones.IdCapsula })
                .Select(s => new
                {
                    IdCapsula = s.Key.IdCapsula,
                    Fecha = s.Key.Fecha,
                    Items = s.GroupBy(x => x.ItemID).Select(y => new { ItemID = y.Key, Cantidad = y.Sum(t => t.Cantidad) }),
                }).ToList();

            var model = new CapsulasInterestsByDateViewModel();
            model.Grouping = grouping;
            model.DateInfo = reproduccionesDB
                        .GroupBy(r => GetResolvedDate(grouping, r.Fecha))
                        .Select(s => new DateInfoModel
                        {
                            Fecha = s.Key,
                            TotalCapsules = s.Where(n => n.Items.Any(q => string.IsNullOrEmpty(itemID) || q.ItemID == itemID)).Select(z => z.IdCapsula).Distinct().Count(),
                            DifferentItems = s.SelectMany(n => n.Items).Where(b => string.IsNullOrEmpty(itemID) || b.ItemID == itemID).Select(h => h.ItemID).Distinct().Count(),
                            TotalItems = s.SelectMany(n => n.Items).Where(b => string.IsNullOrEmpty(itemID) || b.ItemID == itemID).DefaultIfEmpty().Sum(p => p == null ? 0 : p.Cantidad)
                        }).OrderBy(i => i.Fecha).ToList();

            if (accumulate)
            {
                int actualItemQty = 0;
                int actualCapsQty = 0;
                foreach (DateInfoModel info in model.DateInfo)
                {
                    info.TotalItems += actualItemQty;
                    actualItemQty = info.TotalItems;

                    info.TotalCapsules += actualCapsQty;
                    actualCapsQty = info.TotalCapsules;
                }
            }

            TimeSpan tiempo = DateTime.Now.Subtract(inicio);

            return View(model);
        }

        public ActionResult InterestsChart(DateGrouping grouping, string itemID, bool accumulate)
        {
            DateTime inicio = DateTime.Now;

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var reproduccionesDB = db.ReproduccionesItems.Where(p => p.Reproducciones.IdUsuario == user)
                .GroupBy(z => new { z.Reproducciones.Fecha, z.Reproducciones.IdCapsula })
                .Select(s => new
                {
                    IdCapsula = s.Key.IdCapsula,
                    Fecha = s.Key.Fecha,
                    Items = s.GroupBy(x => x.ItemID).Select(y => new { ItemID = y.Key, Cantidad = y.Sum(t => t.Cantidad) }),
                }).ToList();

            var model = new CapsulasInterestsByDateViewModel();
            model.Grouping = grouping;
            model.DateInfo = reproduccionesDB
                        .GroupBy(r => GetResolvedDate(grouping, r.Fecha))
                        .Select(s => new DateInfoModel
                        {
                            Fecha = s.Key,
                            TotalCapsules = s.Where(n => n.Items.Any(q => string.IsNullOrEmpty(itemID) || q.ItemID == itemID)).Select(z => z.IdCapsula).Distinct().Count(),
                            DifferentItems = s.SelectMany(n => n.Items).Where(b => string.IsNullOrEmpty(itemID) || b.ItemID == itemID).Select(h => h.ItemID).Distinct().Count(),
                            TotalItems = s.SelectMany(n => n.Items).Where(b => string.IsNullOrEmpty(itemID) || b.ItemID == itemID).DefaultIfEmpty().Sum(p => p == null ? 0 : p.Cantidad)
                        }).OrderBy(i => i.Fecha).ToList();

            if (accumulate)
            {
                int actualItemQty = 0;
                int actualCapsQty = 0;
                foreach (DateInfoModel info in model.DateInfo)
                {
                    info.TotalItems += actualItemQty;
                    actualItemQty = info.TotalItems;

                    info.TotalCapsules += actualCapsQty;
                    actualCapsQty = info.TotalCapsules;
                }
            }

            TimeSpan tiempo = DateTime.Now.Subtract(inicio);

            string dateFormat = Resources.General.ResourceManager.GetString(string.Format("InterestsChart_DateFormat_{0}", model.Grouping.ToString()));

            using (Chart chart = new Chart())
            {
                chart.Font.Name = "Coda";
                chart.Font.Size = FontUnit.Point(8);
                chart.Width = 1000;
                chart.Height = 400;
                chart.BackColor = Color.FromArgb(255, 0x27, 0x2B, 0x30);
                chart.BorderlineDashStyle = ChartDashStyle.Solid;
                chart.BorderlineColor = Color.Gray;
                chart.BorderlineWidth = 1;
                chart.Palette = ChartColorPalette.None;
                chart.PaletteCustomColors = new[] { Color.Orange, Color.LightGray };

                using (Font fuente = new Font("Coda", 8, GraphicsUnit.Point))
                {
                    ChartArea area = new ChartArea();
                    area.BackColor = Color.Transparent;
                    area.ShadowColor = Color.Transparent;
                    area.BorderColor = Color.FromArgb(255, 0x88, 0x88, 0x88);
                    area.BorderDashStyle = ChartDashStyle.Solid;

                    area.AxisX.LabelStyle.Font = fuente;
                    area.AxisX.LabelStyle.ForeColor= Color.White;
                    area.AxisX.LineColor = Color.FromArgb(255, 0x99, 0x99, 0x99);
                    area.AxisX.IsLabelAutoFit = false;
                    area.AxisX.IsMarginVisible = true;
                    area.AxisX.MajorGrid.LineColor = Color.FromArgb(255, 0x99, 0x99, 0x99);
                    area.AxisX.MajorTickMark.LineColor = Color.FromArgb(255, 0xAA, 0xAA, 0xAA);

                    area.AxisY.LabelStyle.Font = fuente;
                    area.AxisY.LabelStyle.ForeColor = Color.White;
                    area.AxisY.LineColor = Color.FromArgb(255, 0x99, 0x99, 0x99);
                    area.AxisY.IsLabelAutoFit = false;
                    area.AxisY.IsMarginVisible = true;
                    area.AxisY.MajorGrid.LineColor = Color.FromArgb(255, 0x99, 0x99, 0x99);
                    area.AxisY.MajorTickMark.LineColor = Color.FromArgb(255, 0xAA, 0xAA, 0xAA);

                    chart.ChartAreas.Add(area);

                    Series itemsSerie = new Series("Items");
                    itemsSerie.Font = fuente;
                    itemsSerie.ChartType = SeriesChartType.Line;
                    itemsSerie.Points.DataBindXY(model.DateInfo.Select(p => p.Fecha.ToString(dateFormat)).ToArray(), model.DateInfo.Select(p => p.TotalItems).ToArray());
                    itemsSerie.IsValueShownAsLabel = grouping != DateGrouping.Day;
                    itemsSerie.LabelForeColor = Color.Orange;
                    chart.Series.Add(itemsSerie);

                    Series capsulasSerie = new Series("Capsules");
                    capsulasSerie.Font = fuente;
                    capsulasSerie.ChartType = SeriesChartType.Column;
                    capsulasSerie.Points.DataBindXY(model.DateInfo.Select(p => p.Fecha.ToString(dateFormat)).ToArray(), model.DateInfo.Select(p => p.TotalCapsules).ToArray());
                    capsulasSerie.IsValueShownAsLabel = grouping != DateGrouping.Day;
                    capsulasSerie.LabelForeColor = Color.LightGray;
                    chart.Series.Add(capsulasSerie);

                    MemoryStream ms = new MemoryStream();
                    chart.SaveImage(ms, ChartImageFormat.Png);
                    return File(ms.ToArray(), "image/png");
                }
            }
        }

        [HttpGet]
        public ActionResult Index()
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsulas = db.Capsulas.Where(p => p.IdUsuario == user);

            List<CapsulasViewModel> model = new List<CapsulasViewModel>();
            foreach (var capsula in capsulas)
            {
                int cantidad = capsula.CapsulasItems.Sum(s => s.Cantidad);

                var capsulaV = new CapsulasViewModel();
                capsulaV.IdCapsula = capsula.IdCapsula;
                capsulaV.Total = cantidad;
                capsulaV.Spawnable = ItemsXml.Any(p => p.ItemID == capsula.ItemID && p.PaysInterests);
                capsulaV.Descripcion = capsula.Descripcion;

                if (!capsula.CapsulasItems.Any())
                {
                    capsulaV.Descripcion = Resources.General.ResourceManager.GetString("Capsule_Empty");
                }
                else if (capsula.CapsulasItems.Count() == 1)
                {
                    var itemIn = ItemsXml.Single(p => p.ItemID == capsula.CapsulasItems.Single().ItemID);
                    capsulaV.ItemEncapsulado = new ItemViewModel { CurrentItem = itemIn };
                }
                else if (capsula.CapsulasItems.Count() > 1 && capsulaV.Descripcion == null)
                {
                    capsulaV.Descripcion = string.Format("({0} items)", capsula.CapsulasItems.Count());
                }

                model.Add(capsulaV);
            }

            return View(model);
        }

        [HttpGet]
        public ActionResult Add()
        {

            InventarioEntities db = new InventarioEntities();
            var model = new CapsulasCreateViewModel();
            model.Capsulas = ItemsXml.Where(p => p.IsCapsule)
                .Select(s => new
                {
                    ItemID = s.ItemID,
                    Nombre = s.Nombre()
                }).ToDictionary(x => x.ItemID, y => y.Nombre);

            return View(model);
        }
        public ActionResult Add(CapsulasCreateViewModel capsula)
        {
            InventarioEntities db = new InventarioEntities();

            if (ModelState.IsValid)
            {
                string user = User.Identity.GetUserName();

                db.Capsulas.Add(new Capsulas { IdUsuario = user, IdCapsula = capsula.IdCapsula.ToUpper(), Descripcion = capsula.Descripcion, ItemID = capsula.ItemID });

                db.SaveChanges();

                return RedirectToAction("Index");
            }

            capsula.Capsulas = ItemsXml.Where(p => p.IsCapsule)
                .Select(s => new
                {
                    ItemID = s.ItemID,
                    Nombre = s.Nombre()
                }).ToDictionary(x => x.ItemID, y => y.Nombre);


            return View(capsula);
        }

        [HttpGet]
        public ActionResult Edit(string id)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            var model = new CapsulasEditViewModel();
            model.IdCapsula = capsulaDB.IdCapsula;
            model.Descripcion = capsulaDB.Descripcion;
            model.ItemID = capsulaDB.ItemID;

            var capsulas = ItemsXml.Where(p => p.IsCapsule)
                .Select(s => new
                {
                    ItemID = int.Parse(s.ItemID),
                    Nombre = s.Nombre()
                }).ToDictionary(x => x.ItemID, y => y.Nombre);

            return View(model);
        }
        public ActionResult Edit(CapsulasEditViewModel capsula)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            if (ModelState.IsValid)
            {
                capsulaDB.Descripcion = capsula.Descripcion;
                capsulaDB.ItemID = capsula.ItemID;

                db.SaveChanges();

                return RedirectToAction("Index");
            }

            capsula.Capsulas = ItemsXml.Where(p => p.IsCapsule)
                .Select(s => new
                {
                    ItemID = s.ItemID,
                    Nombre = s.Nombre()
                }).ToDictionary(x => x.ItemID, y => y.Nombre);

            return View(capsula);
        }

        [HttpGet]
        public ActionResult List(string id)
        {
            return RecuperarItems(id, null);

        }
        [HttpGet]
        public ActionResult ManageItems(string id)
        {
            return RecuperarItems(id, null);
        }

        [HttpGet]
        public ActionResult Unload(string id)
        {
            return RecuperarItemsUnload(id);
        }
        [HttpGet]
        public ActionResult Load(string id)
        {
            return RecuperarItemsLoad(id);
        }

        [HttpGet]
        public ActionResult LogInterests(string id)
        {
            return RecuperarItems(id, true);
        }

        [HttpGet]
        public ActionResult AddItem(string id)
        {
            if (id == null)
            {
                return new HttpNotFoundResult();
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsula = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user);

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            var itemsCargados = capsula.CapsulasItems.Select(p => p.ItemID).ToList();

            CapsulasAddItemViewModel model = new CapsulasAddItemViewModel();
            model.IdCapsula = id;
            model.Total = capsula.CapsulasItems.Sum(s => s.Cantidad);
            model.AddeableItems = ItemsXml.Where(p => !p.IsCapsule && !itemsCargados.Contains(p.ItemID))
                .Select(q => new ItemViewModel
                {
                    CurrentItem = q,
                }).ToList();

            return View(model);
        }

        [HttpPost]
        public ActionResult AddItem(CapsulasAddItemViewModel addedItem)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsula = db.Capsulas.SingleOrDefault(p => p.IdCapsula == addedItem.IdCapsula && p.IdUsuario == user);

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            db.CapsulasItems.Add(new CapsulasItems { IdCapsula = addedItem.IdCapsula, ItemID = addedItem.ItemID, Cantidad = addedItem.Cantidad });

            db.SaveChanges();

            return RedirectToAction("List", new { id = addedItem.IdCapsula });
        }

        private ActionResult RecuperarItemsUnload(string id)
        {
            if (id == null)
            {
                return new HttpNotFoundResult();
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsula = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user);

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            CapsulaUnloadViewModel model = new CapsulaUnloadViewModel();
            model.IdCapsula = id;
            model.Descripcion = capsula.Descripcion;
            model.Total = capsula.CapsulasItems.Sum(s => s.Cantidad);
            model.Items = capsula.CapsulasItems.Select(p => new ItemUnloadViewModel
                {
                    CurrentItem = ItemsXml.Single(z => z.ItemID == p.ItemID),
                    Cantidad = p.Cantidad,
                    CantidadDescargar = 0
                }).OrderBy(n => n.CurrentItem.Order).ToList();

            return View(model);
        }
        private ActionResult RecuperarItemsLoad(string id)
        {
            if (id == null)
            {
                return new HttpNotFoundResult();
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsula = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user);

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            CapsulaLoadViewModel model = new CapsulaLoadViewModel();
            model.IdCapsula = id;
            model.Descripcion = capsula.Descripcion;
            model.Total = capsula.CapsulasItems.Sum(s => s.Cantidad);

            var enCapsula = capsula.CapsulasItems.Select(q => new ItemLoadViewModel
            {
                CurrentItem = ItemsXml.Single(z => z.ItemID == q.ItemID),
                CantidadEnCapsula = q.Cantidad,
                CantidadCargar = 0
            }).ToList();

            var esCapsula = ItemsXml.Where(p => p.IsCapsule).Select(s => s.ItemID);

            var inventariosDB = db.Inventarios.Where(p => p.IdUsuario == user && !esCapsula.Contains(p.ItemID))
                .Select(q => new
                {
                    ItemID = q.ItemID,
                    CantidadSuelta = q.Cantidad,
                    CantidadCargar = 0
                }).ToList();

            var inventarios = inventariosDB.Select(p => new ItemLoadViewModel
            {
                CurrentItem = ItemsXml.FirstOrDefault(z => z.ItemID == p.ItemID),
                CantidadSuelta = p.CantidadSuelta,
                CantidadCargar = p.CantidadCargar
            }).ToList();

            foreach (var item in enCapsula)
            {
                var inv = inventarios.SingleOrDefault(p => p.CurrentItem.ItemID == item.CurrentItem.ItemID);
                if (inv == null)
                {
                    inventarios.Add(item);
                }
                else
                {
                    inv.CantidadEnCapsula = item.CantidadEnCapsula;
                }
            }

            model.Items = inventarios.OrderBy(p => p.CurrentItem.Order).ToList();

            return View(model);
        }
        private ActionResult RecuperarItems(string id, bool? spawnable)
        {
            if (id == null)
            {
                return new HttpNotFoundResult();
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var capsulasInterests = ItemsXml.Where(p => p.PaysInterests).Select(s => s.ItemID);

            var capsula = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user && (!spawnable.HasValue || capsulasInterests.Contains(p.ItemID)));

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            CapsulasManageViewModel model = new CapsulasManageViewModel();
            model.IdCapsula = id;
            model.Descripcion = capsula.Descripcion;
            model.Total = capsula.CapsulasItems.Sum(s => s.Cantidad);
            model.Items = capsula.CapsulasItems.Select(p => new ItemInventoryViewModel
                {
                    CurrentItem = ItemsXml.Single(z => z.ItemID == p.ItemID),
                    Cantidad = p.Cantidad
                }).ToList();

            return View(model);
        }

        [HttpPost]
        public ActionResult ManageItems(CapsulasManageViewModel capsula)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            foreach (ItemInventoryViewModel item in capsula.Items)
            {
                string itemID = item.CurrentItem.ItemID;
                CapsulasItems capsulaItem = db.CapsulasItems.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.ItemID == itemID);

                if (capsulaItem != null)
                {
                    capsulaItem.Cantidad = item.Cantidad;
                }
            }

            db.SaveChanges();

            return RedirectToAction("List", new { id = capsula.IdCapsula });
        }

        [HttpPost]
        public ActionResult Unload(CapsulaUnloadViewModel capsula)
        {
            if (!ModelState.IsValid)
            {
                return RecuperarItemsUnload(capsula.IdCapsula);
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            foreach (var item in capsula.Items)
            {
                CapsulasItems capsulaItem = db.CapsulasItems.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.ItemID == item.CurrentItem.ItemID);

                if (capsulaItem != null)
                {
                    if (capsulaItem.Cantidad == item.CantidadDescargar)
                    {
                        db.CapsulasItems.Remove(capsulaItem);
                    }
                    else
                    {
                        capsulaItem.Cantidad -= item.CantidadDescargar;
                    }

                    Inventarios inv = db.Inventarios.SingleOrDefault(p => p.IdUsuario == user && p.ItemID == item.CurrentItem.ItemID);

                    if (inv != null)
                    {
                        inv.Cantidad += item.CantidadDescargar;
                    }
                    else
                    {
                        db.Inventarios.Add(new Inventarios { IdUsuario = user, ItemID = item.CurrentItem.ItemID, Cantidad = item.CantidadDescargar });
                    }
                }
            }

            db.SaveChanges();

            return RedirectToAction("List", new { id = capsula.IdCapsula });
        }
        [HttpPost]
        public ActionResult Load(CapsulaLoadViewModel capsula)
        {
            if (!ModelState.IsValid)
            {
                return View(capsula);
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();
            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            if (capsula.Items.Any(p => p.CantidadCargar > p.CantidadSuelta))
            {
                return View(capsula);
            }

            foreach (var item in capsula.Items.Where(p => p.CantidadCargar > 0))
            {
                CapsulasItems capsulaItem = db.CapsulasItems.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.ItemID == item.CurrentItem.ItemID);

                if (capsulaItem != null)
                {
                    capsulaItem.Cantidad += item.CantidadCargar;
                }
                else
                {
                    db.CapsulasItems.Add(new CapsulasItems { IdCapsula = capsula.IdCapsula, ItemID = item.CurrentItem.ItemID, Cantidad = item.CantidadCargar });
                }

                Inventarios inv = db.Inventarios.SingleOrDefault(p => p.IdUsuario == user && p.ItemID == item.CurrentItem.ItemID);

                if (inv != null)
                {
                    if (inv.Cantidad == item.CantidadCargar)
                    {
                        db.Inventarios.Remove(inv);
                    }
                    else
                    {
                        inv.Cantidad -= item.CantidadCargar;
                    }
                }
            }

            db.SaveChanges();

            return RedirectToAction("List", new { id = capsula.IdCapsula });
        }

        [HttpPost]
        public ActionResult LogInterests(CapsulasManageViewModel capsula)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            Dictionary<string, int> v_nuevos = new Dictionary<string, int>();

            foreach (ItemInventoryViewModel item in capsula.Items)
            {
                CapsulasItems capsulaItem = db.CapsulasItems.SingleOrDefault(p => p.IdCapsula == capsula.IdCapsula && p.ItemID == item.CurrentItem.ItemID);

                if (capsulaItem != null)
                {
                    if (capsulaItem.Cantidad > item.Cantidad)
                    {
                        break;
                    }
                    else if (capsulaItem.Cantidad < item.Cantidad)
                    {
                        v_nuevos.Add(item.CurrentItem.ItemID, item.Cantidad - capsulaItem.Cantidad);
                        capsulaItem.Cantidad = item.Cantidad;
                    }
                }
                else
                {
                    break;
                }
            }

            if (v_nuevos.Count > 0)
            {
                DateTime ahora = DateTime.Now;
                DateTime diferencia = ahora.AddMinutes(-15);
                Reproducciones v_ultimaCercana = db.Reproducciones.FirstOrDefault(p => p.IdUsuario == user && p.Fecha >= diferencia);
                if (v_ultimaCercana != null)
                {
                    ahora = v_ultimaCercana.Fecha;
                }

                Reproducciones v_repro = new Reproducciones { IdCapsula = capsula.IdCapsula, IdUsuario = user, Fecha = ahora };
                foreach (var kv in v_nuevos)
                {
                    v_repro.ReproduccionesItems.Add(new ReproduccionesItems { ItemID = kv.Key, Cantidad = kv.Value });
                }
                db.Reproducciones.Add(v_repro);

                db.SaveChanges();

                return RedirectToAction("List", new { id = capsula.IdCapsula });
            }

            return RedirectToAction("LogInterests", new { id = capsula.IdCapsula });
        }

        [HttpGet]
        public ActionResult DeleteItem(string id, string itemID)
        {
            if (id == null || string.IsNullOrWhiteSpace(itemID))
            {
                return new HttpNotFoundResult();
            }

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            var item = capsulaDB.CapsulasItems.SingleOrDefault(p => p.ItemID == itemID);

            if (item == null)
            {
                return new HttpNotFoundResult();
            }

            ItemViewModel summary = new ItemViewModel
            {
                CurrentItem = ItemsXml.Single(z => z.ItemID == item.ItemID),
            };

            return View(new CapsulasDeleteItemViewModel { IdCapsula = id, Total = capsulaDB.CapsulasItems.Sum(s => s.Cantidad), Item = summary, Cantidad = item.Cantidad });
        }

        [HttpPost]
        public ActionResult DeleteItem(CapsulasDeleteItemViewModel element)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var capsulaDB = db.Capsulas.SingleOrDefault(p => p.IdCapsula == element.IdCapsula && p.IdUsuario == user);

            if (capsulaDB == null)
            {
                return new HttpNotFoundResult();
            }

            var item = capsulaDB.CapsulasItems.SingleOrDefault(p => p.ItemID == element.Item.CurrentItem.ItemID);

            if (item == null)
            {
                return new HttpNotFoundResult();
            }

            db.CapsulasItems.Remove(item);

            db.SaveChanges();

            return RedirectToAction("ManageItems", new { id = element.IdCapsula });
        }

        [HttpGet]
        public ActionResult Delete(string id)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var capsula = db.Capsulas.SingleOrDefault(p => p.IdCapsula == id && p.IdUsuario == user);

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            CapsulasDeleteViewModel model = new CapsulasDeleteViewModel();
            model.IdCapsula = id;
            model.Total = capsula.CapsulasItems.Sum(s => s.Cantidad);

            return View(model);
        }

        [HttpPost]
        public ActionResult Delete(CapsulasDeleteViewModel element)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var capsula = db.Capsulas.SingleOrDefault(p => p.IdUsuario == user && p.IdCapsula == element.IdCapsula);

            if (capsula == null)
            {
                return new HttpNotFoundResult();
            }

            while (capsula.CapsulasItems.Count > 0)
            {
                db.CapsulasItems.Remove(capsula.CapsulasItems.First());
            }

            db.Capsulas.Remove(capsula);

            db.SaveChanges();

            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult InterestsDateCapsule(DateGrouping grouping, string id)
        {
            DateTime inicio = DateTime.Now;

            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var reproduccionesDB = db.ReproduccionesItems.Where(p => (id == null || p.Reproducciones.IdCapsula == id) && p.Reproducciones.IdUsuario == user)
                .Select(s => new
                {
                    IdCapsula = s.Reproducciones.IdCapsula,
                    Fecha = s.Reproducciones.Fecha,
                    ItemID = s.ItemID,
                    Cantidad = s.Cantidad,
                }).ToList();

            var filas = reproduccionesDB
                        .GroupBy(r => new { r.IdCapsula, Fecha = GetResolvedDate(grouping, r.Fecha) })
                        .Select(s => new CapsulaFechaTotalViewModel
                        {
                            IdCapsula = s.Key.IdCapsula,
                            Fecha = s.Key.Fecha,
                            Total = s.Sum(p => p.Cantidad),
                            Items = s.GroupBy(u => u.ItemID).Select(v => new ItemInventoryViewModel { Cantidad = v.Sum(w => w.Cantidad), CurrentItem = ItemsXml.Single(p => p.ItemID == v.First().ItemID) })
                        }).ToList();

            var totales = reproduccionesDB
                .GroupBy(r => r.IdCapsula)
                .Select(s => new CapsulaFechaTotalViewModel
                {
                    IdCapsula = s.Key,
                    Fecha = DateTime.MinValue,
                    Total = s.Sum(p => p.Cantidad),
                    Items = s.GroupBy(u => u.ItemID).Select(v => new ItemInventoryViewModel { Cantidad = v.Sum(w => w.Cantidad), CurrentItem = ItemsXml.Single(p => p.ItemID == v.First().ItemID) })
                }).ToList();

            var model = new CapsulasInterestsByDateViewModel();
            model.Grouping = grouping;
            model.Capsulas = reproduccionesDB.Select(p => p.IdCapsula).Distinct().ToList();
            model.DateInfo = reproduccionesDB.GroupBy(p => GetResolvedDate(grouping, p.Fecha)).Select(q => new DateInfoModel { Fecha = q.Key, TotalCapsules = q.Select(z => z.IdCapsula).Distinct().Count(), TotalItems = q.Sum(r => r.Cantidad) });
            model.Filas = filas;
            model.Totales = totales;

            TimeSpan tiempo = DateTime.Now.Subtract(inicio);

            return View(model);
        }

        private DateTime GetResolvedDate(DateGrouping grouping, DateTime fecha)
        {
            switch (grouping)
            {
                case DateGrouping.Week:
                    return fecha.AddDays(-(int)fecha.DayOfWeek).Date;
                case DateGrouping.Month:
                    return new DateTime(fecha.Year, fecha.Month, 1);
                case DateGrouping.Year:
                    return new DateTime(fecha.Year, 1, 1);
                case DateGrouping.Day:
                default:
                    return new DateTime(fecha.Year, fecha.Month, fecha.Day);
            }
        }

        [HttpGet]
        public ActionResult LastSpawn()
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            DateTime fechaMax = db.Reproducciones.Where(p => p.IdUsuario == user).DefaultIfEmpty().Max(q => q == null ? DateTime.MinValue : q.Fecha);

            CapsulasLastSpawnViewModel model = new CapsulasLastSpawnViewModel();
            model.Total = 0;

            if (fechaMax == DateTime.MinValue)
            {
                return View(model);
            }

            model.Fecha = fechaMax;
            var reproducciones = db.ReproduccionesItems
                .Where(p => p.Reproducciones.Fecha == fechaMax && p.Reproducciones.IdUsuario == user)
                .GroupBy(q => new { q.Reproducciones.IdCapsula, q.ItemID })
                .Select(s => new
                         {
                             IdCapsula = s.Key.IdCapsula,
                             ItemID = s.Key.ItemID,
                             Cantidad = s.Sum(t => t.Cantidad)
                         }).ToList();
            model.Capsulas = reproducciones
                .GroupBy(p => p.IdCapsula)
                .Select(s => new CapsulaContenidoViewModel
                         {
                             IdCapsula = s.Key,
                             Cantidad = s.Count(),
                             Contenidos = s.OrderBy(x => x.ItemID).Select(t => new ItemInventoryViewModel
                             {
                                 CurrentItem = ItemsXml.Single(z => z.ItemID == t.ItemID),
                                 Cantidad = t.Cantidad
                             })
                         }).ToList();

            model.Totales = reproducciones
                .GroupBy(t => t.ItemID)
                .OrderBy(x => x.Key)
                .Select(q => new ItemInventoryViewModel
                {
                    CurrentItem = ItemsXml.Single(z => z.ItemID == q.Key),
                    Cantidad = q.Sum(r => r.Cantidad)
                });

            model.Total = reproducciones.Sum(p => p.Cantidad);

            return View(model);
        }

        [HttpGet]
        public ActionResult InterestsTotalCapsule(string id)
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();

            var reproducciones = db.ReproduccionesItems.Where(p => (id == null || p.Reproducciones.IdCapsula == id) && p.Reproducciones.IdUsuario == user)
                        .OrderBy(q => q.ItemID)
                         .Select(s => new
                         {
                             IdCapsula = s.Reproducciones.IdCapsula,
                             ItemID = s.ItemID,
                             Cantidad = s.Cantidad,
                         }).ToList();
            var model = reproducciones.GroupBy(r => r.IdCapsula)
                         .Select(s => new CapsulaFechaTotalViewModel
                         {
                             IdCapsula = s.Key,
                             Total = s.Sum(p => p.Cantidad),
                             Items = s.GroupBy(u => u.ItemID).Select(v => new ItemInventoryViewModel { Cantidad = v.Sum(w => w.Cantidad), CurrentItem = ItemsXml.Single(p => p.ItemID == v.First().ItemID) })
                         }).ToList();

            return View(model);
        }

        [HttpGet]
        public ActionResult InterestsTotalByItem()
        {
            InventarioEntities db = new InventarioEntities();
            string user = User.Identity.GetUserName();


            var totalesDB = db.Reproducciones.Where(p => p.IdUsuario == user)
                .SelectMany(p => p.ReproduccionesItems)
                .GroupBy(p => p.ItemID)
                .Select(q => new
                {
                    ItemID = q.Key,
                    Cantidad = q.Sum(r => r.Cantidad)
                }).ToList();

            var totales = totalesDB.Select(p => new ItemInventoryViewModel
            {
                CurrentItem = ItemsXml.Single(z => z.ItemID == p.ItemID),
                Cantidad = p.Cantidad
            }).ToList();

            return View(totales);
        }
    }
}