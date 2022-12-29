<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="MedicoLogin.aspx.cs" Inherits="ClinicaInacapp.MedicoLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <h1>Medico</h1>
        <div class="main_login">
             <div class="img">
                 <i class="fa-solid fa-users" style = "font-size:100px;"></i>
             </div>
         <p>Correo:</p>
     <asp:TextBox ID="TxtCorreo" runat="server"></asp:TextBox>  
         <p>Contraseña:</p>
     <asp:TextBox ID="TxtPass" TextMode="Password" runat="server"></asp:TextBox>
    <asp:Button ID="BtnEnviar" class="btn btn-info" runat="server" Text="Ingresar" OnClick="BtnEnviar_Click" />
<asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
</div>
</asp:Content>
