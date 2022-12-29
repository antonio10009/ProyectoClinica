<%@ Page Title="" Language="C#" MasterPageFile="~/UsuarioHome.Master" AutoEventWireup="true" CodeBehind="BuscarHoritaUsuario.aspx.cs" Inherits="ClinicaInacapp.BuscarHoritaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <main>
            <div class="main">
            <h2>Registro de Horas</h2>
            <asp:TextBox ID="TxtRut" runat="server" placeholder="Ingrese su Rut"></asp:TextBox>
            <asp:Button ID="BtnVerHoras" runat="server" Text="Ver Horas" OnClick="BtnVerHoras_Click" />
            <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
            <br />
            <asp:Panel ID="ListaHoras" Visible="false" runat="server" BorderStyle="Ridge" Width="200px">
                <table class="auto-style1" align="center">
                    <tr>
                        <td class="auto-style1" colspan="2"><strong>Datos Hora solicitada</strong></td>
                        </tr>
                    <tr>
                        <td class="auto-style4">Rut:</td>
                        <td class="auto-stlye8">
                            <asp:Label ID="LbRut" runat="server" Text=""></asp:Label>
                            </td>
                        </tr>
                    </tr>
                    <td class="auto-style4">Fecha:</td>
                    <td class="auto-style8">
                        <asp:Label ID="LbFecha" runat="server" Text=""></asp:Label>
                    </td>
                    <tr>
                        <td class="auto-style4">Hora:</td>
                        <td class="auto-style8">
                            <asp:Label ID="LbHora" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Nombre del Doctor:</td>
                        <td class="auto-style8">
                            <asp:Label ID="LbNomMedico" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4">Especialidad:</td>
                        <td class="auto-style8">
                            <asp:Label ID="LbEspecialidad" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
                <br />

        </div>
        </main>
</asp:Content>
