<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="ControlesAjax.aspx.cs" Inherits="ClinicaInacapp.ControlesAjax" %>
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

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanelMain" runat="server">
        <ContentTemplate>
            <asp:Button ID="BtnEjemplo" runat="server" Text="Ejemplo" OnClick="BtnEjemplo_Click" /><br />
            <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
        </ContentTemplate>
    </asp:UpdatePanel>
    <asp:UpdateProgress ID="ProgressMain" AssociatedUpdatePanelID="UpdatePanelMain" runat="server">
        <ProgressTemplate>
            <div id="fondo"></div>
            <div id="imagen"></div>
        </ProgressTemplate>

    </asp:UpdateProgress>


</asp:Content>
