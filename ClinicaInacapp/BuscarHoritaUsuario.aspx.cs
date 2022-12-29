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
    public partial class BuscarHoritaUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void BtnVerHoras_Click(object sender, EventArgs e)
        {


            PacienteHora hora = PacienteController.FindPaciente(TxtRut.Text);

            if (hora != null)
            {

                LbMensaje.Text = "Hora Encontrada";
                ListaHoras.Visible = true;
                LbMensaje.Text = "Hora Encontrada";
                LbRut.Text = hora.Rutuser.ToString();
                LbFecha.Text = hora.Fecha.ToString("dd / MM / yyyy");
                LbHora.Text = hora.Horita.Horita;
                LbNomMedico.Text = hora.Doc.Nombre + " " + hora.Doc.Apellido;
                LbEspecialidad.Text = hora.Doc.Especialidad;
            }
            else
            {
                ListaHoras.Visible = false;
                ListaHoras.Visible = false;
                LbMensaje.Text = "No se encontró la hora";
            }
        }


        protected void Volver_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            Response.Redirect("AgendarHora.aspx");
        }

    }
}