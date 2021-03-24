<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClienteEdita.aspx.cs" Inherits="MarioFernandoOrtiz_Front.Formularios.ClienteEdita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="col-md-12">

        <div class="panel panel-default">
            <div class="panel-heading">
                Modificar un Usuario
            </div>
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="col-md-4">

                        <asp:HiddenField ID="HiddenFieldID" runat="server" />
                        <label id="lbl_dni" class="control-label">No.Documento:</label>
                        <br />
                        <asp:TextBox ID="txt_dni" MaxLength="50" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                                        <div class="col-md-4">
                        <label id="lbltpoDni" class="control-label">Tipo de Documento:</label>
                        <br />
                        <asp:TextBox ID="txtTpoDni" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label id="lblNombre_1" class="control-label">Primer Nombre:</label>
                        <br />
                        <asp:TextBox ID="txtNombre_1" MaxLength="100" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label id="lblNombre_2" class="control-label">Segundo Nombre:</label>
                        <br />
                        <asp:TextBox ID="txtNombre_2" MaxLength="100"  CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label id="lblApellido_1" class="control-label">Primer Apellido:</label>
                        <br />
                        <asp:TextBox ID="txtApellido_1" MaxLength="15" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label id="lblApellido_2" class="control-label">Segundo Apellido:</label>
                        <br />
                        <asp:TextBox ID="txtApellido_2" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label id="lblEmail" class="control-label">Email:</label>
                        <br />
                        <asp:TextBox ID="txtEmail" TextMode="Email" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label id="lblTelefono" class="control-label">Telefono:</label>
                        <br />
                        <asp:TextBox ID="txtTelefono" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label id="lblDireccion" class="control-label">Dirección:</label>
                        <br />
                        <asp:TextBox ID="txtDireccion" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <!-- Botones -->
                    <div class="col-md-12">
                        <br />
                        <asp:Button ID="BtnActualizar" runat="server" CssClass="btn btn-success" Text="Actualizar" OnClick="BtnActualizar_Click" />
                    </div>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
