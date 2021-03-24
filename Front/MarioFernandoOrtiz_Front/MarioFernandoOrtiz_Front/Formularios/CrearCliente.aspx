<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearCliente.aspx.cs" Inherits="MarioFernandoOrtiz_Front.Formularios.CrearCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="col-md-10">
        <div class="form-group">
            <asp:Label ID="lbl_dni" runat="server" CssClass="label-control" Text="No.Cedula"></asp:Label>
            <asp:TextBox ID="txt_dni" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Lbl_nombre_1" runat="server" CssClass="label-control" Text="Primer Nombre"></asp:Label>
            <asp:TextBox ID="txt_nombre_1" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Lbl_nombre_2" runat="server" CssClass="label-control" Text="Segundo Nombre"></asp:Label>
            <asp:TextBox ID="txt_nombre_2" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Lbl_apellido_1" runat="server" CssClass="label-control" Text="Primer Apellido"></asp:Label>
            <asp:TextBox ID="txt_apellido_1" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="Lbl_apellido_2" runat="server" CssClass="label-control" Text="Segundo Apellido"></asp:Label>
            <asp:TextBox ID="txt_apellido_2" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>


        <div class="form-group">
            <asp:Label ID="lbl_tpoDocumento" runat="server" CssClass="label-control" Text="Tipo de documento"></asp:Label>
            <asp:TextBox ID="txt_tpodocumento" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lbl_direccion" runat="server" CssClass="label-control" Text="Direccion "></asp:Label>
            <asp:TextBox ID="txt_direccion" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lbl_email" runat="server" CssClass="label-control" Text="Email"></asp:Label>
            <asp:TextBox ID="Txt_email" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>

        <div class="form-group">
            <asp:Label ID="lbl_Telefono" runat="server" CssClass="Telefono" Text="Telefono"></asp:Label>
            <asp:TextBox ID="Txt_telefono" runat="server" CssClass="form-control"> </asp:TextBox>
        </div>
        <asp:Button ID="BtnGrabar" runat="server" Text="Guardar Informacion" CssClass="btn btn-primary" OnClick="BtnGrabar_Click" />
    </div>


</asp:Content>

