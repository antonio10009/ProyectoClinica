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
    public partial class listadoMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                gridMedico();
            }
        }
        public void gridMedico()
        {
            GrdMedicos.DataSource = from doc in MedicoController.FindAll()
                                    select new
                                    {
                                        Codigo_Doctor = doc.CodDoctor,
                                        Nombre = doc.Nombre + " " + doc.Apellido,
                                        Rut = doc.Rut,
                                        Especialidad = doc.Especialidad
                                    };
            GrdMedicos.DataBind();
        }

        protected void GrdMedicos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}