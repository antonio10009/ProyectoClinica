<%@ Page Title="" Language="C#" MasterPageFile="~/UsuarioHome.Master" AutoEventWireup="true" CodeBehind="EditarPerfilUsuario.aspx.cs" Inherits="ClinicaInacapp.EditarPerfilUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:TextBox ID="TxtCodigo" Enabled="false" runat="server" Text=""></asp:TextBox>
     <asp:TextBox ID="TxtRut" Enabled="false" runat="server" Text=""></asp:TextBox>
     <asp:TextBox ID="TxtNombre" Enabled="false" runat="server" Text=""></asp:TextBox>
     <asp:TextBox ID="TxtApellido" Enabled="false" runat="server" Text=""></asp:TextBox>
     <asp:TextBox ID="TxtCorreo" Enabled="false" runat="server" Text=""></asp:TextBox>
     <asp:TextBox ID="TxtNumeroTelefono" Enabled="false" runat="server" Text=""></asp:TextBox>
    <asp:LinkButton ID="ModEditar" runat="server" OnClick="ModEditar_Click">Modificar</asp:LinkButton>

        
                    <td class="auto-style5">
                        <asp:Button ID="BtnEditar" Enabled="false" runat="server" Text="Guardar Cambios" OnClick="BtnEditar_Click"  />
                        <br />
                        <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
                    </td>

</asp:Content>
