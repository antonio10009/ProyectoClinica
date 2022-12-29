<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AgregarMedico.aspx.cs" Inherits="ClinicaInacapp.AgregarMedico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <h1 style="text-align:center; padding:20px;">Agregar Medico</h1>
    <div class="contenedor" style="display:flex;
                            justify-content:center;
                            align-items:center;
                            flex-direction:column;

">
         <p>Correo</p>
    <asp:TextBox Id="TxtCorreo" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" ControlToValidate="TxtCorreo" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="TxtCorreo" ForeColor="Red" ErrorMessage="Correo Inválido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
     <p>Codigo</p>
    <asp:TextBox Id="TxtcodDoc" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" ControlToValidate="TxtcodDoc" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
         <p>Contraseña</p>
    <asp:TextBox TextMode="Password" Id="TxtPass" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" ControlToValidate="TxtPass" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
  
     <p>Nombre</p>
    <asp:TextBox Id="TxtNombre" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ControlToValidate="TxtNombre" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
     <p>Apellido</p>
    <asp:TextBox Id="TxtApellido" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" ControlToValidate="TxtApellido" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
     <p>Rut</p>
    <asp:TextBox Id="TxtRut" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" ControlToValidate="TxtRut" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ControlToValidate="TxtRut" ForeColor="Red" ErrorMessage="Rut Inválido" ValidationExpression="^([0-9]+-[0-9K])$"></asp:RegularExpressionValidator>

     <p>Especialidad</p>
    <asp:TextBox Id="TxtEspecialidad" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" ControlToValidate="TxtEspecialidad" runat="server" ErrorMessage="Campo requerido"></asp:RequiredFieldValidator>
    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
    <asp:Label id="Label1" runat="server" Text=""></asp:Label>


    </div>
   
</asp:Content>
