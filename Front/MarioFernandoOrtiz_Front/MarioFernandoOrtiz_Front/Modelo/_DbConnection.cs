using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.ManagedDataAccess.Client;

namespace MarioFernandoOrtiz_Front.Modelo
{
    public abstract class _DbConnection
    {
        protected string _ConnetionString { get { return System.Configuration.ConfigurationManager.ConnectionStrings["SistemaConnection"].ConnectionString; } }
        protected OracleConnection _Connection { get; set; }
    }
}