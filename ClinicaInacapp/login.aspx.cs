using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClinicaInacapp.Controller;
using ClinicaInacapp.clases;
namespace ClinicaInacapp
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UsuarioController.AgregarUsuarios();
        }

        // Evento Normal
        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            Usuario u = LoginController.Login(TxtCorreo.Text, TxtPass.Text);

            if (u != null)
            {
                Session["ActiveUser"] = u;
                if (u.Role.Nombre.Equals("Admin"))
                {
                    System.Threading.Thread.Sleep(3000);
                    LbMensaje.Text = DateTime.Now.ToLongDateString();
                    Response.Redirect("HomeAdmin.aspx");
                }
                else if (u.Role.Nombre.Equals("Normal"))
                {
                    System.Threading.Thread.Sleep(3000);
                    LbMensaje.Text = DateTime.Now.ToLongDateString();
                    Response.Redirect("HomeUsuario.aspx");
                }
            }
            else
            {
                LbMensaje.Text = "Credenciales incorrectas";
                Session["ActiveUser"] = null;
            }
        }

  
    }
}
