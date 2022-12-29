using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicaInacapp
{
    public partial class ControlesAjax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnEjemplo_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            LbMensaje.Text = DateTime.Now.ToLongDateString();

        }
    }
}