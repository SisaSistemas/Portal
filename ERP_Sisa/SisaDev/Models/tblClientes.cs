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
    
    public partial class tblClientes
    {
        public System.Guid IdCliente { get; set; }
        public string RazonSocial { get; set; }
        public string Contacto { get; set; }
        public string Email { get; set; }
        public string Departamento { get; set; }
        public string TelefonoEmpresa { get; set; }
        public string Celular { get; set; }
        public string UsuarioCliente { get; set; }
        public string ContrasenaCliente { get; set; }
        public string MapaCoordenadas { get; set; }
        public string Logotipo { get; set; }
        public string Direccion { get; set; }
        public System.Guid IdUsuarioAlta { get; set; }
        public System.DateTime FechaAlta { get; set; }
        public System.Guid IdUsuarioModificacion { get; set; }
        public System.DateTime FechaModificacion { get; set; }
        public int Activo { get; set; }
        public System.Guid idEmpresa { get; set; }
    }
}
