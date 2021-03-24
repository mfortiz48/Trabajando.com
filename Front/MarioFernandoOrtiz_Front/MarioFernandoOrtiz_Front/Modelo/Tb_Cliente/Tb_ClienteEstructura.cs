using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MarioFernandoOrtiz_Front.Modelo.Tb_Cliente
{
    public class Tb_ClienteEstructura : _DbConnection
    {
        public long Cliente_Id { get; set; }
        public string Cliente_Dni { get; set; }
        public string Cliente_Nombre_1 { get; set; }
        public string  Cliente_Nombre_2  { get; set; }
        public string  Cliente_Apellido_1 { get; set; }
        public string Cliente_Apellido_2 { get; set; }
        public long Cliente_Tpo_Dni { get; set; }
        public string Cliente_Telefono { get; set; }
        public string Cliente_Direccion { get; set; }
        public string Cliente_Email { get; set; }
    }
}