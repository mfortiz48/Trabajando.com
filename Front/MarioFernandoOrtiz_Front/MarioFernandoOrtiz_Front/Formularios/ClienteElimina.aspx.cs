using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MarioFernandoOrtiz_Front.Modelo.Tb_Cliente;

namespace MarioFernandoOrtiz_Front.Formularios
{
    public partial class ClienteElimina : System.Web.UI.Page
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
                        if (long.TryParse(Cliente_Id, out _Cliente_id))
                        {
                            HiddenFieldID.Value = _Cliente_id.ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Ocurrio un error')", true);
            }
        }








        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void BtnSi_Click(object sender, EventArgs e)
        {
            try
            {
                Tb_Clientecs _objCliente = new Tb_Clientecs();

                long _Cliente_Id = long.Parse(HiddenFieldID.Value);

                if (_Cliente_Id == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Cliente Vacio')", true);
                }
                else
                {
                    bool respuesta = _objCliente.Eliminar_Cliente(_Cliente_Id);

                    if (respuesta)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Registro Borrado Exitosamente')", true);

                        Thread.Sleep(5000);
                        HttpContext.Current.Response.Redirect("ListarCliente.aspx");

                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('El registro no se pudo eliminar')", true);
                    }
                }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('occurrio un error ')", true);
            }
        }

        protected void BtnNo_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Redirect("ListarCliente.aspx");
        }
    }
}