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
    public partial class AgendarHora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MedicoController.CrearMedico();
            ControlladorHoritas.CrearHora();

            if (!Page.IsPostBack)
            {

                CargarDropMedico();
                CargarDropHora();

            }
        }
        public void CargarDropMedico()
        {
            DropMedico.DataSource = from me in MedicoController.FindAll()
                                    select new
                                    {
                                        codDoctor = me.CodDoctor,
                                        texto = me.Rut + " | " + me.Nombre + " " + me.Apellido + " " + me.Especialidad
                                    };
            DropMedico.DataValueField = "codDoctor";
            DropMedico.DataTextField = "texto";
            DropMedico.DataBind();
        }

        public void CargarDropHora()
        {
            DropHora.DataSource = from ho in ControlladorHoritas.FindAll()
                                  select new
                                  {
                                      codigo = ho.Codigo,
                                      texto = ho.Horita
                                  };
            DropHora.DataValueField = "codigo";
            DropHora.DataTextField = "texto";
            DropHora.DataBind();
        }
        public string cargahora;

        protected void BtnAgendaHora_Click (object sender, EventArgs e)
        {
            DateTime fecha = Calendario.SelectedDate;

            LbMensaje.Text = PacienteController.addPaciente(TxtRut.Text, DropMedico.SelectedValue.ToString(),
                DropHora.SelectedValue.ToString(), fecha.ToString());
        }

        protected void BtnHora_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropHora_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}