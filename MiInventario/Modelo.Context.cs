﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MiInventario
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class InventarioEntities : DbContext
    {
        public InventarioEntities()
            : base("name=InventarioEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Capsulas> Capsulas { get; set; }
        public virtual DbSet<CapsulasItems> CapsulasItems { get; set; }
        public virtual DbSet<Inventarios> Inventarios { get; set; }
        public virtual DbSet<Reproducciones> Reproducciones { get; set; }
        public virtual DbSet<ReproduccionesItems> ReproduccionesItems { get; set; }
    }
}