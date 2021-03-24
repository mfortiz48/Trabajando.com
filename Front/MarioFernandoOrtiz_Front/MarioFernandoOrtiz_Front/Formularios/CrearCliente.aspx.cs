using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MarioFernandoOrtiz_Front.Modelo.Tb_Cliente;

namespace MarioFernandoOrtiz_Front.Formularios
{
    public partial class CrearCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGrabar_Click(object sender, EventArgs e)
        {
            Tb_Clientecs cliente = new Tb_Clientecs();

            cliente.Cliente_Dni = txt_dni.Text.ToUpper();
            cliente.Cliente_Nombre_1 = txt_nombre_1.Text.ToUpper();
            cliente.Cliente_Nombre_2 = txt_nombre_2.Text.ToUpper();
            cliente.Cliente_Apellido_1 = txt_apellido_1.Text.ToUpper();
            cliente.Cliente_Apellido_2 = txt_apellido_2.Text.ToUpper();
            cliente.Cliente_Tpo_Dni = int.Parse(txt_tpodocumento.Text.ToUpper());
            cliente.Cliente_Telefono = Txt_telefono.Text.ToUpper();
            cliente.Cliente_Direccion = txt_direccion.Text.ToUpper();
            cliente.Cliente_Email = Txt_email.Text.ToUpper();
            cliente.Registrar_Cliente();





            HttpContext.Current.Response.Redirect("ListarCliente.aspx");








        }
    }
}