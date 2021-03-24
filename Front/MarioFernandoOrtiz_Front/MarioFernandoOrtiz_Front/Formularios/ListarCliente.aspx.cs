using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MarioFernandoOrtiz_Front.Modelo.Tb_Cliente ;

namespace MarioFernandoOrtiz_Front.Formularios
{
    public partial class ListarCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    Tb_Clientecs obj = new Tb_Clientecs();            
                    List<Tb_ClienteEstructura> listaClientes = obj.Consultar_Clientes();
                    GrvClientes.EmptyDataText = "No existen Clientes";
                    GrvClientes.DataSource = listaClientes;
                    GrvClientes.DataBind(); ;
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                }
            }
        }
    }
}