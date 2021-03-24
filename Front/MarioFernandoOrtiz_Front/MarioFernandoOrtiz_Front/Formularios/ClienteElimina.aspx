<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClienteElimina.aspx.cs" Inherits="MarioFernandoOrtiz_Front.Formularios.ClienteElimina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        <div class="col-md-6 col-md-offset-3">
            <br />
            <br />
            <br />
            <br />
        <div class="panel panel-default">
            <div class="panel-heading">             
            </div>
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="col-md-12">

                        <asp:HiddenField ID="HiddenFieldID" runat="server" />
                        <h4 style="text-align:center">¿ Realmente Desea borrar el Registro?</h4>
                        
                    </div>
                     
                    <!-- Botones -->
                    <div class="col-md-12">
                        <br />
                        <div class="col-md-6">

                            <asp:Button ID="BtnSi" runat="server" CssClass="btn btn-primary btn-block" Text="Si" OnClick="BtnSi_Click"/>

                        </div>

                        <div class="col-md-6">
                             <asp:Button ID="BtnNo" runat="server" CssClass="btn btn-danger btn-block" Text="No" OnClick="BtnNo_Click"/>

                        </div>
                        
                        
                       
                    </div>

                </div>
            </div>
        </div>
    </div>




</asp:Content>
