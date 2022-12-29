<%@ Page Title="" Language="C#" MasterPageFile="~/UsuarioHome.Master" AutoEventWireup="true" CodeBehind="AgendarHoraUsuario.aspx.cs" Inherits="ClinicaInacapp.AgendarHoraUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:TextBox ID="TxtRutUsuario" Enabled="false" runat="server"></asp:TextBox>
         <div class="calendario_contenedor"> 
            <asp:Calendar ID="Calendario" runat="server" Width="631px"></asp:Calendar>
            <asp:DropDownList ID="DropMedico" runat="server" ></asp:DropDownList><br />
            <asp:DropDownList ID="DropHora" runat="server" ></asp:DropDownList>
            <br />
            <asp:Button ID="AgendaHora" runat="server" Text="Agendar Hora" OnClick="AgendaHora_Click" /><br />
            <asp:Label ID="LbMensaje" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
