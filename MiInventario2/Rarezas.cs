//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MiInventario2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Rarezas
    {
        public Rarezas()
        {
            this.Items = new HashSet<Items>();
        }
    
        public int IdRareza { get; set; }
        public string Descripcion { get; set; }
        public string Color { get; set; }
    
        public virtual ICollection<Items> Items { get; set; }
    }
}
