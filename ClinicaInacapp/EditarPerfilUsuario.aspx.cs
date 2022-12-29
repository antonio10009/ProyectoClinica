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
    public partial class EditarPerfilUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                cargarDatos();

            }
        }


        protected void ModEditar_Click(object sender, EventArgs e)
        {
            if (ModEditar.Text.Equals("Modificar"))
            {
                TxtNombre.Enabled = true;
                TxtApellido.Enabled = true;
                TxtCorreo.Enabled = true;
                TxtNumeroTelefono.Enabled = true;
                BtnEditar.Enabled = true;
                ModEditar.Text = "Cancelar";
            }
            else
            {
                TxtCodigo.Enabled = false;
                TxtNombre.Enabled = false;
                TxtApellido.Enabled = false;
                TxtCorreo.Enabled = false;
                TxtNumeroTelefono.Enabled = false;
                BtnEditar.Enabled = false;
                ModEditar.Text = "Modificar";
            }
        }

        public void cargarDatos()
        {
            if (Session["ActiveUser"] == null)
            {
                Response.Redirect("login.aspx");
            }
            Usuario u = (Usuario)Session["ActiveUser"];

            TxtCodigo.Text = u.Id.ToString();
            TxtRut.Text = u.Rutuser.ToString();
            TxtNombre.Text = u.Nombre;
            TxtApellido.Text = u.Apellido;
            TxtCorreo.Text = u.Correo;
            TxtNumeroTelefono.Text = u.NumeroTelefono.ToString();

        }

        protected void BtnEditar_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            LbMensaje.Text = UsuarioController.EditPerfil(TxtCodigo.Text, TxtRut.Text, TxtNombre.Text, TxtApellido.Text, TxtCorreo.Text, TxtNumeroTelefono.Text);
        }
    }
}