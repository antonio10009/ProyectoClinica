<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="AgendarHora.aspx.cs" Inherits="ClinicaInacapp.AgendarHora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="Contenedor_ingresar_datos">
             <div class="ingresar_datos">
                 <h2 style="
                     text-align:center;
                     ">Ingrese sus datos por favor</h2>
                 <div class="form-outline">
            </div>
                <asp:TextBox ID="TxtRut" placeholder="Rut" runat="server"></asp:TextBox><br />
                <asp:TextBox ID="TxtNombre" placeholder="Nombre" runat="server"></asp:TextBox><br />
                 <asp:TextBox ID="TxtCorreo" placeholder="Correo" runat="server"></asp:TextBox><br />
             </div>
         <div class="calendario_contenedor" style="width:42%; "> 
            <asp:Calendar class="calendar" ID="Calendario" runat="server" Width="631px"></asp:Calendar>
              <asp:DropDownList ID="DropMedico" runat="server" OnSelectedIndexChanged="DropHora_SelectedIndexChanged"></asp:DropDownList>
            <asp:DropDownList ID="DropHora" runat="server" OnSelectedIndexChanged="DropHora_SelectedIndexChanged"></asp:DropDownList>
            <br />
            <asp:Button ID="AgendaHora" class="btn btn-info" runat="server" Text="Agendar Hora" OnClick="BtnAgendaHora_Click" /><br />
            <br />
            <asp:Label ID="LbMensaje"  runat="server" Text=""></asp:Label>
        </div>
       </div>
</asp:Content>