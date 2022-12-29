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
    public partial class MedicoLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnEnviar_Click(object sender, EventArgs e)
        {
            Medico u = MedicoController.Login(TxtCorreo.Text, TxtPass.Text);

            if (u != null)
            {
                Session["ActiveUser"] = u;
                Response.Redirect("home.aspx");
            }
            else
            {
                LbMensaje.Text = "Credenciales incorrectas";
                Session["ActiveUser"] = null;
            }
        }
    }
}