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
    
    public partial class sp_LoadProyectoTasks_Result
    {
        public System.Guid IdProyecto { get; set; }
        public string NombreProyecto { get; set; }
        public int TotalTask { get; set; }
        public int FinalizadosTask { get; set; }
        public Nullable<decimal> Porcentaje { get; set; }
    }
}
