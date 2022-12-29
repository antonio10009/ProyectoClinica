using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClinicaInacapp.clases;
using ClinicaInacapp.Controller;

namespace ClinicaInacapp.Controller
{

    public class UsuarioController
    {
        private static List<Usuario> listaUsuarios = new List<Usuario>();
        public static string AddUsuario(int id, string correo, string pass, string rut, string nombre, string apellido, string numerotelefono, string nomMedico, Rol role)
        {
            try
            {
                Medico medico = MedicoController.FindMedico(correo);
                Usuario u = new Usuario()
                {
                    Id = id,
                    Rutuser = rut,
                    Correo = correo,
                    Nombre = nombre,
                    Apellido = apellido,
                    Doc = medico,
                    NumeroTelefono = int.Parse(numerotelefono),
                    Role = role,
                    Contrasena = pass
                };

                listaUsuarios.Add(u);
                return "Add";

            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        public static Usuario FindUsuario(string correo)
        {
            foreach (Usuario item in listaUsuarios)
            {
                if (item.Correo.Equals(correo))
                {
                    return item;
                }
            }
            return null;
        }

        public static List<Usuario> FindAll()
        {
            return listaUsuarios;
        }

        public static string addHora(string nombre, string rut)
        {
            try
            {
                Usuario u = new Usuario()
                {
                    Nombre = nombre,
                    Rutuser = rut
                };


                listaUsuarios.Add(u);
                return "Hora Agendada";
            }
            catch (Exception ex)
            {

                return ex.Message;
            }
        }


        public static string EditPerfil(string cod, string rut, string nombre, string apellido, string correo, string telefono)
        {


            Usuario usu = FindUsuario(correo);
            usu.Id = int.Parse(cod);
            usu.Rutuser = rut;
            usu.Nombre = nombre;
            usu.Apellido = apellido;
            usu.Correo = correo;
            usu.NumeroTelefono = int.Parse(telefono);

            return "Usuario editado";

        }


        public static void AgregarUsuarios()
        {
            if (listaUsuarios.Count < 1)
            {
                AddUsuario(1, "admin", "123", "1-1", "Antonio", "Diaz", "905", "Seba", new Rol() { Codigo = 1, Nombre = "Admin" });
                AddUsuario(2, "User", "123", "2-2", "Bran", "Hernandez", "789", "Edu", new Rol() { Codigo = 2, Nombre = "Normal" });
            }
        }
    }
}