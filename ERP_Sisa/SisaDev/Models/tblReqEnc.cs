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
    
    public partial class tblReqEnc
    {
        public System.Guid IdReqEnc { get; set; }
        public string NoReq { get; set; }
        public System.Guid IdProyecto { get; set; }
        public int Estatus { get; set; }
        public int SolicitarCotizacion { get; set; }
        public Nullable<int> RealizarCompra { get; set; }
        public string Observaciones { get; set; }
        public string Fecha { get; set; }
        public System.Guid IdUsuarioElaboro { get; set; }
        public System.DateTime FechaElaboracion { get; set; }
        public Nullable<System.Guid> IdUsuarioAutorizo { get; set; }
        public Nullable<System.DateTime> FechaAutorizada { get; set; }
        public Nullable<System.Guid> IdUsuarioCompra { get; set; }
        public Nullable<System.DateTime> FechaCompra { get; set; }
    }
}
