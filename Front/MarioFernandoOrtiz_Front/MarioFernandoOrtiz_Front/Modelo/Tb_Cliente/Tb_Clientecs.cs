using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MarioFernandoOrtiz_Front.Modelo.Tb_Cliente;
using Oracle.ManagedDataAccess.Client;
using Oracle;

namespace MarioFernandoOrtiz_Front.Modelo.Tb_Cliente
{
    public class Tb_Clientecs : Tb_ClienteEstructura
    {
        public void Registrar_Cliente()
        {
            String comando_sql = "Pq_Cliente.Crear_Cliente";
            using (_Connection = new OracleConnection(_ConnetionString))
            {
                _Connection.Open();
                OracleCommand _command = new OracleCommand(comando_sql, _Connection);
                _command.CommandType = System.Data.CommandType.StoredProcedure;
                _command.Parameters.Add("p_dni", OracleDbType.Varchar2, 15).Value = Cliente_Dni;
                _command.Parameters.Add("p_nombre_1", OracleDbType.Varchar2, 25).Value = Cliente_Nombre_1;
                _command.Parameters.Add("p_nombre_2", OracleDbType.Varchar2, 25).Value = Cliente_Nombre_2;
                _command.Parameters.Add("p_apellido_1", OracleDbType.Varchar2, 25).Value = Cliente_Apellido_1;
                _command.Parameters.Add("p_apellido_2", OracleDbType.Varchar2, 25).Value = Cliente_Apellido_2;
                _command.Parameters.Add("p_tpo_dni", OracleDbType.Long, 10).Value = Cliente_Tpo_Dni;
                _command.Parameters.Add("p_telefono", OracleDbType.Varchar2, 20).Value = Cliente_Telefono;
                _command.Parameters.Add("p_direccion", OracleDbType.Varchar2, 40).Value = Cliente_Direccion;
                _command.Parameters.Add("p_email", OracleDbType.Varchar2, 40).Value = Cliente_Email;
                _command.Parameters.Add("p_msg   ", OracleDbType.Varchar2).Direction = ParameterDirection.Output;
                OracleParameter _parameter = new OracleParameter();
                string respuesta;
                _command.ExecuteNonQuery();

                respuesta = Convert.ToString(_parameter.Value);
                _command.Dispose();
                _Connection.Close();
            }
        }






        public List<Tb_ClienteEstructura> Consultar_Clientes()
        
        {
            List<Tb_ClienteEstructura> ListaClientes = new List<Tb_ClienteEstructura>();

            try
            {
                String comando_sql = "Pq_Cliente.Consultar_Cliente";
                using (_Connection = new OracleConnection(_ConnetionString))
                {
                    _Connection.Open();
                    OracleCommand _command = new OracleCommand(comando_sql, _Connection);
                    _command.CommandType = System.Data.CommandType.StoredProcedure;
                    _command.Parameters.Add("p_cursor", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleParameter _parameter = new OracleParameter();
                    OracleDataReader reader = _command.ExecuteReader();
                    if (reader != null)
                    {
                        while (reader.Read())
                        {
                            Tb_ClienteEstructura estructura = new Tb_ClienteEstructura();
                            estructura.Cliente_Id = reader.GetInt32(0);
                            estructura.Cliente_Dni = reader.GetString(1);
                            estructura.Cliente_Nombre_1 = reader.GetString(2);
                            estructura.Cliente_Nombre_2 = !reader.IsDBNull(3)? reader.GetString(3):null ;
                            estructura.Cliente_Apellido_1 = reader.GetString(4);
                            estructura.Cliente_Apellido_2 = reader.GetString(5);
                            estructura.Cliente_Tpo_Dni = reader.GetInt64(6);
                            estructura.Cliente_Telefono = reader.GetString(7);
                            estructura.Cliente_Direccion = reader.GetString(8);
                            estructura.Cliente_Email = reader.GetString(9);
                            ListaClientes.Add(estructura);
                        }
                    }
                    _command.Dispose();
                    _Connection.Close();
                }

            }
            catch (Exception ex)
            {
                Console.Out.WriteLine(ex);
            }
            return ListaClientes;
        }





        public Tb_ClienteEstructura Consultar_Cliente_X_Id(long Id)
        {
           Tb_ClienteEstructura ObjCliente = new Tb_ClienteEstructura();

            try
            {
                String comando_sql = "Pq_Cliente.Consultar_Cliente_Id";
                using (_Connection = new OracleConnection(_ConnetionString))
                {
                    _Connection.Open();
                    OracleCommand _command = new OracleCommand(comando_sql, _Connection);
                    _command.CommandType = System.Data.CommandType.StoredProcedure;
                    _command.Parameters.Add("p_Id", OracleDbType.Int64).Value = Id;
                    _command.Parameters.Add("p_cursor", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                    OracleParameter _parameter = new OracleParameter();
                    OracleDataReader reader = _command.ExecuteReader();

                    if (reader != null)
                    {
                        while (reader.Read())
                        {
                            ObjCliente.Cliente_Id = reader.GetInt32(0);
                            ObjCliente.Cliente_Dni = reader.GetString(1);
                            ObjCliente.Cliente_Nombre_1 = reader.GetString(2);
                            ObjCliente.Cliente_Nombre_2 = reader.GetString(3);
                            ObjCliente.Cliente_Apellido_1 = reader.GetString(4);
                            ObjCliente.Cliente_Apellido_2 = reader.GetString(5);
                            ObjCliente.Cliente_Tpo_Dni = reader.GetInt64(6);
                            ObjCliente.Cliente_Telefono = reader.GetString(7);
                            ObjCliente.Cliente_Direccion = reader.GetString(8);
                            ObjCliente.Cliente_Email = reader.GetString(9);                            
                        }
                    }
                    _command.Dispose();
                    _Connection.Close();
                }

            }
            catch (Exception ex)
            {

                Console.Out.WriteLine(ex);
            }

            return ObjCliente;
        }









        public bool Actualizar_Cliente()
        {

            bool resp = false;


            try
            {
                String comando_sql = "Pq_Cliente.Actualizar_Cliente";
                using (_Connection = new OracleConnection(_ConnetionString))
                {
                    _Connection.Open();
                    OracleCommand _command = new OracleCommand(comando_sql, _Connection);
                    _command.CommandType = System.Data.CommandType.StoredProcedure;
                    _command.Parameters.Add("p_Id", OracleDbType.Long,15).Value = Cliente_Id;
                    _command.Parameters.Add("p_dni", OracleDbType.Varchar2, 15).Value = Cliente_Dni;
                    _command.Parameters.Add("p_nombre_1", OracleDbType.Varchar2, 25).Value = Cliente_Nombre_1;
                    _command.Parameters.Add("p_nombre_2", OracleDbType.Varchar2, 25).Value = Cliente_Nombre_2;
                    _command.Parameters.Add("p_apellido_1", OracleDbType.Varchar2, 25).Value = Cliente_Apellido_1;
                    _command.Parameters.Add("p_apellido_2", OracleDbType.Varchar2, 25).Value = Cliente_Apellido_2;
                    _command.Parameters.Add("p_tpo_dni", OracleDbType.Long, 10).Value = Cliente_Tpo_Dni;
                    _command.Parameters.Add("p_telefono", OracleDbType.Varchar2, 20).Value = Cliente_Telefono;
                    _command.Parameters.Add("p_direccion", OracleDbType.Varchar2, 40).Value = Cliente_Direccion;
                    _command.Parameters.Add("p_email", OracleDbType.Varchar2, 40).Value = Cliente_Email;
                    _command.Parameters.Add("p_msg   ", OracleDbType.Varchar2).Direction = ParameterDirection.Output;
                    OracleParameter _parameter = new OracleParameter();
                    string respuesta;
                    _command.ExecuteNonQuery();

                    respuesta = Convert.ToString(_parameter.Value);


                    if (string.IsNullOrEmpty(respuesta))
                    {
                        resp = true;
                    }
                    else
                    {
                        resp = false;
                    }

                    _command.Dispose();
                    _Connection.Close();

                    resp = true; ;
            }
            }
            catch (Exception ex )
            {
                 
                resp = false;
            }

            return resp;

        }









        public bool Eliminar_Cliente(long  p_Cliente_Id)
        {

            bool resp = false;


            try
            {
                String comando_sql = "Pq_Cliente.Eliminar_Cliente";
                using (_Connection = new OracleConnection(_ConnetionString))
                {
                    _Connection.Open();
                    OracleCommand _command = new OracleCommand(comando_sql, _Connection);
                    _command.CommandType = System.Data.CommandType.StoredProcedure;
                    _command.Parameters.Add("p_Id", OracleDbType.Long, 15).Value = p_Cliente_Id;
                    _command.Parameters.Add("p_msg   ", OracleDbType.Varchar2).Direction = ParameterDirection.Output;
                    OracleParameter _parameter = new OracleParameter();
                    string respuesta;
                    _command.ExecuteNonQuery();

                    respuesta = Convert.ToString(_parameter.Value);


                    if (string.IsNullOrEmpty(respuesta))
                    {
                        resp = true;
                    }
                    else
                    {
                        resp = false;
                    }

                    _command.Dispose();
                    _Connection.Close();

                    resp = true; ;
                }
            }
            catch (Exception ex)
            {

                resp = false;
            }

            return resp;

        }














    }
}