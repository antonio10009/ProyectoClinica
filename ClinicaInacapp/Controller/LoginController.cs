using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ClinicaInacapp.clases;
using ClinicaInacapp.Controller;

namespace ClinicaInacapp.Controller

{
    public class LoginController
    {

        public static Usuario Login(string username, string pass)
        {
            Usuario user = UsuarioController.FindUsuario(username);
            if (user != null)
            {
                if (user.Contrasena.Equals(pass))
                {
                    return user;
                }
                else
                {
                    return null;
                }
            }
            return null;
        }
    }
}