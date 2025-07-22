using System;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using Newtonsoft.Json;
using SisaDev.Models;
namespace SisaDev
{
    public partial class Inicio : System.Web.UI.Page
    {
        static tblUsuarios usuario;
        static tblRolesUsuarios rolesUsuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                usuario = HttpContext.Current.Session["UsuarioLogueado"] as tblUsuarios;
                if (usuario != null)
                {
                    rolesUsuario = HttpContext.Current.Session["RolesUsuarioLogueado"] as tblRolesUsuarios;
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }

        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string ObtenerFoto(int a) 
        {
            try
            {
                return usuario.Foto;
            }
            catch (Exception ex)
            {
                return JsonConvert.SerializeObject(new { error = ex.Message });
            }
        }

        [WebMethod]
        public static string ObtenerBoletin(string pid)
        {
            try
            {
                string retorno = string.Empty;
                using (var DataControl = new SisaEntitie())
                {
                    var CC = DataControl.tblBoletin.Select(s => s);
                    retorno = JsonConvert.SerializeObject(CC);
                }
                return retorno;
            }
            catch (Exception ex)
            {
                return JsonConvert.SerializeObject(new { error = ex.Message });
            }
        }
    }
}