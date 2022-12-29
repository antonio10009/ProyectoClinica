<%@ Page Title="" Language="C#" MasterPageFile="~/UsuarioHome.Master" AutoEventWireup="true" CodeBehind="MedicoListU.aspx.cs" Inherits="ClinicaInacapp.MedicoListU" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="main">
            <h2 style="
                text-align:center;
                padding:20px;
                ">Nuestros Especialistas</h2>
                <asp:GridView class="table" ID="GrdMedicos" runat="server" OnSelectedIndexChanged="GrdMedicos_SelectedIndexChanged">
            </asp:GridView>
        </div>
        <br />
</asp:Content>
