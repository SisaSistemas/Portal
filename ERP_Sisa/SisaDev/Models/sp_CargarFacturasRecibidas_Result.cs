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
    
    public partial class sp_CargarFacturasRecibidas_Result
    {
        public System.Guid IdControlFacturas { get; set; }
        public string FechaFactura { get; set; }
        public System.Guid IdProveedor { get; set; }
        public string NoFactura { get; set; }
        public string OrdenCompra { get; set; }
        public string Proyecto { get; set; }
        public string Moneda { get; set; }
        public decimal SubTotal { get; set; }
        public decimal Descuento { get; set; }
        public decimal IVA { get; set; }
        public decimal Total { get; set; }
        public int Estatus { get; set; }
        public string FormaPago { get; set; }
        public string Proveedor { get; set; }
        public string IdOrdenCompra { get; set; }
        public string IdProyecto { get; set; }
        public Nullable<int> Viaticos { get; set; }
        public string FechaPago { get; set; }
        public string NombreArchivo { get; set; }
        public string Categoria { get; set; }
        public Nullable<decimal> Anticipo { get; set; }
        public Nullable<decimal> NotaCredito { get; set; }
        public Nullable<decimal> APagar { get; set; }
        public string EstatusProyecto { get; set; }
        public Nullable<System.Guid> ModificacionGlobal { get; set; }
    }
}
