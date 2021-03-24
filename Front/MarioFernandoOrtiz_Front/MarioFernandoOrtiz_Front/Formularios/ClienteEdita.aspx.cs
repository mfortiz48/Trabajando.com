using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using MarioFernandoOrtiz_Front.Modelo.Tb_Cliente;

namespace MarioFernandoOrtiz_Front.Formularios
{
    public partial class ClienteEdita : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                    string Cliente_Id = Request.QueryString["Cliente_Id"];
                    if (string.IsNullOrEmpty(Cliente_Id))
                    {
                        Console.WriteLine("Error");
                        HttpContext.Current.Response.Redirect("ListarCliente.aspx");
                    }
                    else
                    {
                        long _Cliente_id = 0;
                        if (long.TryParse(Cliente_Id,out _Cliente_id))
                        {
                            Tb_Clientecs _objCliente = new Tb_Clientecs();
                            Tb_ClienteEstructura _EditarCliente = _objCliente.Consultar_Cliente_X_Id(_Cliente_id);
                            HiddenFieldID.Value = _EditarCliente.Cliente_Id.ToString();
                            txt_dni.Text = _EditarCliente.Cliente_Dni;
                            txtTpoDni.Text = _EditarCliente.Cliente_Tpo_Dni.ToString();
                            txtNombre_1.Text = _EditarCliente.Cliente_Nombre_1;
                            txtNombre_2.Text = _EditarCliente.Cliente_Nombre_2;
                            txtApellido_1.Text = _EditarCliente.Cliente_Apellido_1;
                            txtApellido_2.Text = _EditarCliente.Cliente_Apellido_2;
                            txtDireccion.Text = _EditarCliente.Cliente_Direccion;
                            txtTelefono.Text = _EditarCliente.Cliente_Telefono;
                            txtEmail.Text = _EditarCliente.Cliente_Email;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {


            try
            {
                Tb_Clientecs objCliente = new Tb_Clientecs();
                objCliente.Cliente_Id = long.Parse(HiddenFieldID.Value);
                objCliente.Cliente_Dni = txt_dni.Text.ToUpper();
                objCliente.Cliente_Tpo_Dni = long.Parse(txtTpoDni.Text);
                objCliente.Cliente_Nombre_1 = txtNombre_1.Text.ToUpper();
                objCliente.Cliente_Nombre_2 = txtNombre_2.Text.ToUpper();
                objCliente.Cliente_Apellido_1 = txtApellido_1.Text.ToUpper();
                objCliente.Cliente_Apellido_2 = txtApellido_2.Text.ToUpper();
                objCliente.Cliente_Direccion = txtDireccion.Text.ToUpper();
                objCliente.Cliente_Telefono = txtTelefono.Text.ToUpper();
                objCliente.Cliente_Email = txtEmail.Text.ToUpper();
                bool resultado = objCliente.Actualizar_Cliente();
                if (resultado)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('registro Actualizado')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registro Borrado')", true);
                }
            }
            catch (Exception ex )
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ocurrio un error')", true);

            }



        }
    }
}