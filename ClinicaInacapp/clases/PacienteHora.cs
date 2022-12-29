
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicaInacapp.clases
{
    public class PacienteHora : Usuario
    {
        private Medico doc;
        private Hora horita;
        private DateTime fecha;
        private Usuario user;
        public PacienteHora()
        {
        }
        public Usuario User
        {
            get { return user; }
            set { user = value; }
        }

        public Medico Doc
        {
            get { return doc; }
            set { doc = value; }
        }

        public Hora Horita
        {
            get { return horita; }
            set { horita = value; }
        }

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }


    }
}