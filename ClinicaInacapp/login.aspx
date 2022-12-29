<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ClinicaInacapp.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #fondo{
            position: fixed;
            top: 0px;
            left: 0px;
            right: 0px;
            bottom: 0px;
            overflow: hidden;
            padding: 0px;
            margin: 0px;
            background-color: white;
            opacity: 0.8;
            z-index: 10000;
        }
        #imagen {

            position: fixed;
            top: 0%;
            left: 0%;
            height: 100%;
            width: 100%;
            z-index: 10001;
            background-image: url('loading.gif');
            background-repeat: no-repeat;
            background-position: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main_login" style="width:100%; height:500px; 
        display:flex;
        text-align:center;
        align-items:center;
        justify-content:center;
        flex-direction:column;

">
             <div class="img">
                 <h1 style="padding:10px;">Iniciar Sesion</h1>
             </div>
        <h4>Correo</h4>
      <asp:TextBox ID="TxtCorreo" runat="server" placeholder="IgnacioMuñoz@gmail.com" style="width:300px;"></asp:TextBox>
        <h4>Contraseña</h4>
     <asp:TextBox ID="TxtPass" TextMode="Password" placeholder="Su respectiva contraseña" runat="server" style="width:300px;"></asp:TextBox>


    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
        <ContentTemplate>
           <asp:Button ID="BtnEnviar" class="btn btn-info" runat="server" Text="Ingresar" OnClick="BtnEnviar_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="ProgressMain" AssociatedUpdatePanelID="UpdatePanelMain" runat="server">
        <ProgressTemplate>
            <div id="fondo"></div>
            <div id="imagen"></div>
        </ProgressTemplate>




    </asp:UpdateProgress>
    
<asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
</div>
</asp:Content>
