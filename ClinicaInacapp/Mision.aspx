<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="Mision.aspx.cs" Inherits="ClinicaInacapp.Mision" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="Nosotros_main">
        <div class="Texto_mision">
            <div class="h1_mv">
                <h1>Misión y visión</h1>
            </div>
            <p>Nuestra misión es ayudar a las personas a llevar vidas más saludables y colaborar para que el sistema de salud funcione mejor para todos.</p>
            <div class="Texto_valor">
                <h2>Valores</h2>
            </div>
            <p>Integridad: Cumplir los compromisos. Nunca transigir en cuestiones de ética.</p>
            <p>Compasión: Nos pondremos en el lugar de las personas a quienes servimos y con quienes trabajamos.</p>
            <p>Relaciones: Generar confianza a través de la colaboración.</p>
            <p>Innovación: Inventar el futuro y aprender del pasado.</p>
            <p>Desempeño: Demostrar excelencia en todo lo que hacemos.</p>
        </div>
        <div class="contenedor_href">
            <div class="baul_href">
                <a href="SobreNosotros.aspx"><i class="fa-solid fa-heart-pulse"  id="img"></i></a>
                <a href="SobreNosotros.aspx">Sobre nosotros</a>
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
