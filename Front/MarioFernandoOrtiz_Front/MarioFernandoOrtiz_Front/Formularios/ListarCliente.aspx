<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListarCliente.aspx.cs" Inherits="MarioFernandoOrtiz_Front.Formularios.ListarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="col-md-12">
            <br />
            <br />
            <br />
            <br />
        <div class="panel panel-default">
            <div class="panel-heading"> 
               <h3>Listado De Clientes</h3>
            </div>
            <div class="panel-body">
                <div class="col-md-12">
                    <div class="col-md-12">


                        <div class="col-md-3">
                            <a href="CrearCliente.aspx" class="btn  btn-primary btn-block">Crear Nuevo Cliente </a>

                        </div>
                        <br />
                        <br />
     <br />
    <br />
    <div class="col-md-12">
        <div class="table-responsive">

            <asp:GridView ID="GrvClientes" AutoGenerateColumns="false" runat="server" DataKeyNames="Cliente_id" CssClass="table table-hove">
                <Columns>
                    <asp:BoundField DataField="Cliente_Dni" SortExpression="Cliente_Dni" HeaderText="No.Documento" />
                    <asp:BoundField DataField="Cliente_Tpo_Dni" SortExpression="Cliente_Tpo_Dni" HeaderText="Tipo de Documento" />
                    <asp:BoundField DataField="Cliente_Nombre_1" SortExpression="Cliente_Nombre_1" HeaderText="Primer Nombre" />
                    <asp:BoundField DataField="Cliente_Nombre_2" SortExpression="Cliente_Nombre_2" HeaderText="Segundo Nombre" />
                    <asp:BoundField DataField="Cliente_Apellido_1" SortExpression="Cliente_Apellido_1" HeaderText="Primer Apellido" />
                    <asp:BoundField DataField="Cliente_Apellido_2" SortExpression="Cliente_Apellido_2" HeaderText="Segundo Apellido" />
                    <asp:BoundField DataField="Cliente_Direccion" SortExpression="Cliente_Direccion" HeaderText="Direccion" />
                    <asp:BoundField DataField="Cliente_Telefono" SortExpression="Cliente_Telefono" HeaderText="Telefono" />
                    <asp:BoundField DataField="Cliente_Email" SortExpression="Cliente_Email" HeaderText="Email" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <a href="ClienteEdita.aspx?Cliente_id=<%# Eval("Cliente_id")%>" class="btn btn-warning">Modificar</a>
                        </ItemTemplate>
                    </asp:TemplateField>
                                        <asp:TemplateField>
                        <ItemTemplate>
                            <a href="ClienteElimina.aspx?Cliente_id=<%# Eval("Cliente_id")%>" class="btn btn-danger ">Eliminar</a>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>







            </asp:GridView>

        </div>



    </div>                       







                        
                    </div>                    
                </div>
            </div>
        </div>
    </div>
    
    
    




</asp:Content>
