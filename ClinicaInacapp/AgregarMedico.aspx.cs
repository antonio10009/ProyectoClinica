using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClinicaInacapp.Controller;
namespace ClinicaInacapp
{
    public partial class AgregarMedico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            Label1.Text = MedicoController.addMedico(TxtcodDoc.Text, TxtCorreo.Text,TxtPass.Text,TxtNombre.Text, TxtApellido.Text
         , TxtRut.Text, TxtEspecialidad.Text);
        }
    }
}