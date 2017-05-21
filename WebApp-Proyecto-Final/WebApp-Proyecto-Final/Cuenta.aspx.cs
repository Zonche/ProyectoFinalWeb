using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp_Proyecto_Final.Utilidades.Class;

namespace WebApp_Proyecto_Final
{
    public partial class Cuenta : System.Web.UI.Page
    {
        Conexiones_SQL conectionToDB = new Conexiones_SQL();
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            query = String.Format("INSERT INTO T_USUARIO(usuario,contraseña,privilegio,nombreUsuario,apellidos,calle1,calle2,colonia,codigoPostal,ciudad,pais) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')",
            txt_user.Text,
            txt_password.Text,
            1,
            txt_name.Text,
            txt_LastName.Text,
            txt_Direccion1.Text,
            txt_Direccion2.Text,
            txt_colonia.Text,
            txt_cp.Text,
            txt_ciudad.Text,
            txt_pais.Text);

            if (conectionToDB.insert_NewUSer(query))
            {
                ClientScript.RegisterStartupScript(GetType(), "example", "confirm('Usuario creado Exitosamente');", true);
                Response.Redirect("Login.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "example1", "confirm('Faltan datos');", true);
            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            query = String.Format("SELECT usuario FROM T_USUARIO WHERE usuario = '{0}'",
                txt_user.Text);
            if (conectionToDB.consultaWhitOnlyOneObject(query, txt_user.Text, "usuario"))
            {
                lb_checador.Text = "Disponible";
            }
            else
                lb_checador.Text = "No disponible";
        }
    }
}