<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="medicLogin.aspx.cs" Inherits="ClinicaInacapp.medicLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main_login">
             <div class="img">
                 <i class="fa-solid fa-users" style = "font-size:100px;"></i>
             </div>
         <p>Correo:</p>
     <asp:TextBox ID="TxtCorreo" runat="server" placeholder="IgnacioMuñoz@gmail.com"></asp:TextBox>  
         <p>Contraseña:</p>
     <asp:TextBox ID="TxtPass" TextMode="Password" placeholder="Su respectiva contraseña" runat="server"></asp:TextBox>
    <asp:Button ID="BtnEnviar" class="btn btn-info" runat="server" Text="Ingresar" OnClick="BtnEnviar_Click" />
<asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
</div>
</asp:Content>
