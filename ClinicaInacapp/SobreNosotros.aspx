<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="SobreNosotros.aspx.cs" Inherits="ClinicaInacapp.SobreNosotros" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <div class="Nosotros_main">
        <div class="Texto_Sobre_Nosotros">
            <h2>¿Quienes somos?</h2>
            <p>Somos 3 developers con la tarea de generar un software capaz de agendar horas medicas
                tanto para usuarios registrados en la pagina como no registrados, ademas tendra interfaces 
                tanto para trabajadores de la salud dentro de la clinica como administradores, los cuales 
                tendran una interfaz diferente cada uno de ellos, ademsa cabe recalcar que la diferencia entre
                solicitar una hora al ser un paciente registrado y no registrado es que el registrado podra acceder
                a un historial para ver sus horas agendadas. 
            </p>

                <h3>Perspectiva del software</h3>
                <p>
                    El software esta orientado a facilitar la acción de pedir una hora médica, mediante 
                    nuestra página web, dándole a los usuarios registrados la opción de poder ver su 
                    historial médico, cabe recalcar que solo los registrados podrán tener acceso a su 
                    historial, aquel usuario que no esté registrado solo podrá solicitar una hora, pero no 
                    se le dará su historial debido a que no esta registrado. 
                    En los casos de la tecnología que ha avanzado a lo largo de los tiempos hubo 
                    cambios, que en los requerimientos se describían de manera avanzada para 
                    especificar las características del sistema, en nuestro proceso se describirá los 
                    requerimientos que implicará mejorar los servicios en general para cumplir las 
                    necesidades de los pacientes.
                    De acuerdo con los servicios actuales de los centros médicos y clínicas es priorizar 
                    la mejora de la gestión médica, ya que permitirá fortalecer los controles de la salud y 
                    más la cultura organizacional de todo el personal. 
                    En estas situaciones es crucial estar al pendiente mejorar e implementar las 
                    infraestructuras de las clínicas para mejorar la calidad de los pacientes, también las 
                    motivaciones, interés del personal y disminuir las posibilidades de hospitalización 
                    de los pacientes y la gravedad de la salud. 

                </p>
        </div>
        </div>
        <div class="contenedor_href">
            <div class="baul_href">
                <a href="Mision.aspx"><i class="fa-solid fa-heart-pulse"  id="img"></i></a>
                <a href="Mision.aspx">Misión y visión</a>
            </div>
            <div class="baul_href">
                <a href="img/Documentacion (1).pdf"><i class="fa-solid fa-dove" id="img"></i></a>
                <a href="img/Documentacion (1).pdf">Documentación</a>
            </div>
            <div class="baul_href">
                <a href="https://portales.inacap.cl/"><i class="fa-solid fa-landmark"  id="img"></i></a>
                <a href="https://portales.inacap.cl/">Hogar de estudio</a>
            </div>
        </div>
    </div>
    <script src="https://kit.fontawesome.com/f3bbf7076e.js" crossorigin="anonymous"></script>
</asp:Content>
