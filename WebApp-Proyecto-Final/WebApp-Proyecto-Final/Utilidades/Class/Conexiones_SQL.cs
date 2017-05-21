using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace WebApp_Proyecto_Final.Utilidades.Class
{
    public class Conexiones_SQL
    {
        SqlConnection conectionSQL = new SqlConnection(@"Data Source=localhost;Initial Catalog=ProyectoWeb;Persist Security Info=True;User ID=sa;Password=sasa");
        SqlDataReader sqlDR;
        public string privilegio;

        #region Estructura de la Base de DATOS
        /*Tablas: T_COMPONENTE,     Columnas:
         *                          idcomponente PK
         *                          tipoComponente
         *        T_PRODUCTO,   
         *                          idproducto PK
         *                          nombreProducto
         *                          precio
         *                          descripcion
         *                          cantidad
         *                          idcomponente FK
         *                          
         *                      
         *        T_RESUMENVENTA,
         *                          idresumen PK
         *                          costeFinal
         *                          fecha
         *                          idusuario FK
         *                          
         *                          
         *        T_USUARIO,
         *                          idusuario PK
         *                          usuario
         *                          contraseña
         *                          privilegio
         *                          nombreUsuario
         *                          apellidos
         *                          calle1
         *                          calle2
         *                          colonia
         *                          codigoPostal
         *                          ciudad
         *                          pais
         *                          
         * 
         *        T_VENTA
         *                          idventa PK
         *                          idproducto FK
         *                          idresumen FK
         */
        #endregion

        public bool Login_Pass(string query,string user,string password)
        {
            SqlCommand cmd = new SqlCommand(query, conectionSQL);
            bool respuesta=false;
            conectionSQL.Open();
            sqlDR = cmd.ExecuteReader();
            while (sqlDR.Read())
            {
                if (sqlDR["usuario"].ToString() == user)
                {
                    privilegio = sqlDR["privilegio"].ToString();
                    respuesta = true;
                }
                else
                    respuesta = false;
            }
            conectionSQL.Close();
            return respuesta;
        }

        public bool insert_NewUSer(string query)
        {
            SqlCommand cmd = new SqlCommand(query, conectionSQL);
            bool respuesta = false;
            try
            {
                conectionSQL.Open();
                cmd.ExecuteNonQuery();
                conectionSQL.Close();
                respuesta = true;
                return respuesta;
            }
            catch (Exception)
            {
                respuesta = false;
                return respuesta;
            }
        }


        public bool consultaWhitOnlyOneObject(string query, string cosaABuscar, string columnaABuscar)
        {
            SqlCommand cmd = new SqlCommand(query, conectionSQL);
            conectionSQL.Open();
            bool respuesta = false;
            sqlDR = cmd.ExecuteReader();
            while (sqlDR.Read())
            {
                if (sqlDR[columnaABuscar].ToString() == cosaABuscar)
                    respuesta = true;
                else
                    respuesta = false;
            }
            conectionSQL.Close();
            return respuesta;
        }
    }
}