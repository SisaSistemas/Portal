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
    
    public partial class tblCostoIndirectoCuautitlanCCM
    {
        public System.Guid IdCostoIndirectoCuautitlanCCM { get; set; }
        public int Semana { get; set; }
        public decimal Nomina { get; set; }
        public decimal Imss { get; set; }
        public decimal Total { get; set; }
        public decimal TotalEmpleados { get; set; }
        public decimal GastosAdministrativos { get; set; }
        public decimal ConsumiblesTaller { get; set; }
        public decimal Gasolina { get; set; }
        public decimal EquipoSeguridad { get; set; }
        public decimal InventarioSisa { get; set; }
        public decimal Viaticos { get; set; }
        public decimal Carros { get; set; }
        public decimal Uniformes { get; set; }
        public decimal PerdidaCambiaria { get; set; }
        public decimal UtilidadCambiaria { get; set; }
        public decimal Intereses { get; set; }
        public decimal ComisionesBancarias { get; set; }
        public System.DateTime FechaAlta { get; set; }
        public System.Guid IdUsuarioAlta { get; set; }
        public System.DateTime FechaModificacion { get; set; }
        public System.Guid IdUsuarioModifica { get; set; }
        public Nullable<decimal> TotalProyectos { get; set; }
        public Nullable<decimal> TotalCotizado { get; set; }
        public Nullable<decimal> Porcentaje { get; set; }
        public Nullable<System.DateTime> FechaIni { get; set; }
        public Nullable<System.DateTime> FechaFin { get; set; }
        public Nullable<decimal> Vacaciones { get; set; }
        public Nullable<decimal> Aguinaldo { get; set; }
    }
}
