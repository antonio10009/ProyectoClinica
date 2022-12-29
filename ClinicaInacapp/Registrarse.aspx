<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="ClinicaInacapp.Registrarse" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrarse</title>
    <link href="css/Registrarse.css" rel="stylesheet" type="text/css">
</head>
<body>
   <main>
        <form class="formulario" action="https://formsubmit.co/ignacio.munoz72@inacapmail.cl" enctype="multipart/form-data" method="POST">
            <h1>Registrate</h1>
            <p>Rellena los datos y responderemos tu solicitud de registro lo más pronto posible</p>
            <div class="nombre_apellido">
                <p>
                    Nombre y apellido:
                </p>
                <input id="user" type="text" name="Nombre del sujeto:" placeholder="Ejemplo: Brakmel Smith" required>
            </div>
            <div class="rut">
                <p>
                    Rut:
                </p>
                <input id="rut" type="text" name="Rut:" placeholder="Ejemplo: 20.240.466-9" required>
            </div>
            <div class="email">
                <p>
                    Email:
                </p>
                <input id="email" type="text" name="Correo:" placeholder="Ejemplo: Brak9@live.com" required>
            </div>
            <div class="contrasena">
                <p>
                    Contraseña:
                </p>
                <input id="pass" type="password" name="Contraseña" placeholder="Ejemplo: ElpepeSalta*#23" required>
            </div>
            <div class="funcion_en_clinica">
                <p>
                    Funcion:
                </p>
                <input id="funcion" type="text" name="Tipo de paciente" placeholder="Ejemplo: Soy paciente" required>
            </div>
            <div class="foto_carnet">
                <p>
                    Carnet + rostro:
                </p>
                <i class="fa-solid fa-address-card"></i>
                <input id="img" class="img" type="file" name="attachment" accept="image/png, image/jpeg" required>
            </div>
            <div class="submit">
                <p>
                  Solicitamos la foto de su cara junto al carnet para poder corroborar sus datos, recuerde que es una pagina profesional y como tal merece el respeto correspondiente
                </p>
                <input id="registrarse" type="submit" >
                <a href="home.aspx">Regresar</a>
            </div>
        </form>
    </main>
    <script src="https://kit.fontawesome.com/f3bbf7076e.js" crossorigin="anonymous"></script>
</body>
</html>

