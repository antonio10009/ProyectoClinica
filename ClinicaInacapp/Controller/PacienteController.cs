using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClinicaInacapp.clases;
using ClinicaInacapp.Controller;

namespace ClinicaInacapp.Controller
{
    public class PacienteController
    {
        private static List<PacienteHora> listaPaciente = new List<PacienteHora>();

        public static string addPaciente(string RutUsuario, string codDoctor, string codigo, string fecha)
        {

            try
            {
                Usuario usuario = UsuarioController.FindUsuario(RutUsuario);
                Medico medico = MedicoController.FindMedico(codDoctor);
                Hora horita = ControlladorHoritas.FindHora(codigo);


                PacienteHora pac = new PacienteHora()
                {


                    Rutuser = RutUsuario,
                    Doc = medico,
                    Horita = horita,
                    Fecha = DateTime.Parse(fecha)

                };

                listaPaciente.Add(pac);
                return "Hora agendada correctamente =)";

            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }


        public static List<PacienteHora> FindAll()
        {
            return listaPaciente;
        }

        public static PacienteHora FindPaciente(string rutUsu)
        {
            foreach (PacienteHora item in FindAll())
            {
                if (item.Rutuser == (rutUsu))
                {
                    return item;
                }
            }
            return null;
        }

    }
}