//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SisaDev.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tblInvHerramientas
    {
        public System.Guid IdHerramienta { get; set; }
        public string NoCodigo { get; set; }
        public string Descripcion { get; set; }
        public string Tipo { get; set; }
        public string NoSerie { get; set; }
        public string Observaciones { get; set; }
        public int Contenedor { get; set; }
        public string Estatus { get; set; }
        public Nullable<decimal> Entradas { get; set; }
        public Nullable<decimal> Salidas { get; set; }
        public Nullable<decimal> TotalAlmacen { get; set; }
    }
}
