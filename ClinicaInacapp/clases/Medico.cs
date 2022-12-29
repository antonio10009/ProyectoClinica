using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ClinicaInacapp.clases
{
    public class Medico 
    {
        
    private int codDoctor;
    private string correo;
    private string nombre;
    private string apellido;
    private string rut;
    private string especialidad;
    private string password;

    public Medico() { }

        public string Password
        {
            get { return password; }
            set { password = value; }
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

    public string Rut
    {
        get { return rut; }
        set { rut = value; }
    }
    public int CodDoctor
    {
        get { return codDoctor; }
        set { codDoctor = value; }
    }

    public string Especialidad
    {
        get { return especialidad; }
        set { especialidad = value; }
    }

}
}