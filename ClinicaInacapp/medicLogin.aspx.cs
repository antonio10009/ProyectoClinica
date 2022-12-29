using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClinicaInacapp.clases;
using ClinicaInacapp.Controller;

namespace ClinicaInacapp
{
    public partial class medicLogin : System.Web.UI.Page
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
                Response.Redirect("");
                Response.Redirect("");
            }
            else
            {
                LbMensaje.Text = "Credenciales incorrectas";
                Session["ActiveUser"] = null;
            }
        }
    }
}