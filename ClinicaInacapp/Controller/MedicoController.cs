using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClinicaInacapp.clases;
using ClinicaInacapp.Controller;

namespace ClinicaInacapp.Controller
{
    public class MedicoController
    {

        private static List<Medico> MedicoList = new List<Medico>();
        public static string addMedico(string codDoctor, string correo, string password, string nombre, string apellido, string rut, string especialidad)
        {

            try
            {
                Medico doc = new Medico()
                {
                    Correo = correo,
                    Password = password,
                    CodDoctor = int.Parse(codDoctor),
                    Nombre = nombre,
                    Apellido = apellido,
                    Rut = rut,
                    Especialidad = especialidad

                };
                MedicoList.Add(doc);
                return "Medico Agregado";
            }
            catch (Exception ex)
            {

                return ex.Message;
            }

        }
        public static List<Medico> FindAll()
        {
            return MedicoList;
        }

        public static Medico FindMedico(string cod)
        {
            foreach (Medico doc in FindAll())
            {
                if (doc.CodDoctor == int.Parse(cod))
                {
                    return doc;
                }

            }
            return null;
        }

        public static Medico Find(string correo)
        {
            try
            {
                foreach (Medico medic in MedicoList)
                {
                    if (medic.Correo.Equals(correo))
                    {
                        return medic;
                    }
                }
                return null;
            }
            catch (Exception)
            {
                return null;
                throw;
            }
        }

        public static Medico Login(string correo, string pass)
        {
            Medico med = Find(correo);
            if (med != null)
            {
                if (med.Password.Equals(pass))
                {
                    return med;
                }
                else
                {
                    return null;
                }
            }
            return null;
        }
    

    public static void CrearMedico()
        {
            if (MedicoList.Count < 1)
            {
                addMedico("1", "Seba@gmail.com", "123", "Sebastian Alvarez", "Pizarro Alejandro", "21.355.151-5", "Psicologo");
                addMedico("2", "Antonio@gmail.com", "123", "Antonio Diaz", "Pizarro Alejandro", "21.355.151-3", "Cardiologo");
                addMedico("3", "Brutini@gmail.com", "123", "Brutini Gonzalez", "Pizarro Alejandro", "21.355.151-1", "Nutricionista");
            }
        }

    }
}