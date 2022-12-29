using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicaInacapp.clases
{
    public class Usuario
    {


        // Atributos
        private int id;
        private string rutuser;
        private string username;
        private string contrasena;
        private string correo;
        private string nombre;
        private string apellido;
        private int numerotelefono;
        private Medico doc;
        private Rol rol;

        // Get, Set y metodo vacio
        public Medico Doc
        {
            get { return doc; }
            set { doc = value; }
        }

        public string Username
        {
            get { return username; }
            set { username = value; }
        }

        public Rol Role
        {
            get { return rol; }
            set { rol = value; }
        }
        public Usuario() { }

        public string Rutuser
        {
            get { return rutuser; }
            set { rutuser = value; }
        }

        public string Contrasena
        {
            get { return contrasena; }
            set { contrasena = value; }
        }

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public int NumeroTelefono
        {
            get { return numerotelefono; }
            set { numerotelefono = value; }
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }





    }
}