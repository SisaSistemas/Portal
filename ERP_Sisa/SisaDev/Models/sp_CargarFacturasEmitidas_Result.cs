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
    
    public partial class sp_CargarFacturasEmitidas_Result
    {
        public System.Guid IdFacturasEmitidas { get; set; }
        public string FolioFactura { get; set; }
        public System.DateTime FechaFactura { get; set; }
        public string NombreReceptor { get; set; }
        public string NombreProyecto { get; set; }
        public string NoCotizacion { get; set; }
        public string OrdenCompraRecibida { get; set; }
        public decimal SubTotal { get; set; }
        public decimal Iva { get; set; }
        public decimal Total { get; set; }
        public string Moneda { get; set; }
        public System.DateTime ProgramacionPago { get; set; }
        public Nullable<decimal> PorPagar { get; set; }
        public System.DateTime FechaPago { get; set; }
        public int Estatus { get; set; }
        public string IdProyecto { get; set; }
        public string ProgramacionPago1 { get; set; }
        public string Estatus1 { get; set; }
        public string FechaFactura1 { get; set; }
        public string FechaPago1 { get; set; }
        public string NombreArchivo { get; set; }
        public int Enviada { get; set; }
        public string CorreoEnviado { get; set; }
        public string Cliente { get; set; }
        public string FolioProyecto { get; set; }
        public string Sucursal { get; set; }
        public string FechaPA { get; set; }
    }
}
