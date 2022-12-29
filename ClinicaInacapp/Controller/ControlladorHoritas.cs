using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClinicaInacapp.clases;


namespace ClinicaInacapp.Controller
{
    public class ControlladorHoritas : Medico
    {
        private static List<Hora> ListarHoras = new List<Hora>();
        public static string AddHora(string horita, string codigo)
        {
            try
            {
                Hora h = new Hora()
                {
                    Horita = horita,
                    Codigo = int.Parse(codigo)
                };
                ListarHoras.Add(h);
                return "Hora Agregada";

            }
            catch (Exception ex)
            {

                return ex.Message;
            }
        }

        public static List<Hora> FindAll()
        {
            return ListarHoras;
        }

        public static Hora FindHora(string codigo)
        {
            foreach (Hora horita in FindAll())
            {
                if (horita.Codigo == int.Parse(codigo))
                {
                    return horita;
                }

            }
            return null;
        }

        public static void CrearHora()
        {
            if (ListarHoras.Count < 1)
            {
                AddHora("9:00AM", "1");
                AddHora("10:00AM", "2");
                AddHora("11:00AM", "3");
                AddHora("12:00PM", "4");
                AddHora("13:00PM", "5");
                AddHora("14:00PM", "6");
                AddHora("15:00PM", "7");
                AddHora("16:00PM", "8");
                AddHora("17:00PM", "9");
                AddHora("18:00PM", "10");
                AddHora("19:00PM", "11");
                AddHora("20:00PM", "12");
                AddHora("21:00PM", "13");
            }
        }

    }
}