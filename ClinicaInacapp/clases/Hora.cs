using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicaInacapp.clases
{
    public class Hora
    {
        private int codigo;
        private string horita;

        public Hora() { }
        public int Codigo
        {
            get { return codigo; }
            set { codigo = value; }
        }

        public string Horita
        {
            get { return horita; }
            set { horita = value; }
        }
    }
}