using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp_Proyecto_Final.Utilidades.Class;

namespace WebApp_Proyecto_Final
{
    public partial class users : System.Web.UI.Page
    {
        string query = "";
        Conexiones_SQL conectionDB = new Conexiones_SQL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["privilegio"] == "1")
            {
                btn_moddUser.Visible = false;
                btn_moddUser.Enabled = false;
                btn_deleteUser.Enabled = false;
                btn_deleteUser.Visible = false;
                ddl_permisos.Enabled = false;
                query = String.Format("SELECT usuario FROM T_USUARIO WHERE usuario = '{0}'",
                    txt_newUser.Text);
            }
            else
            {
                btn_moddUser.Visible = true;
                btn_moddUser.Enabled = true;
                btn_deleteUser.Enabled = true;
                btn_deleteUser.Visible = true;
                ddl_permisos.Enabled = true;
                ddl_permisos.Visible = true;
                btn_search.Text = "Buscar";
            }
        }

        protected void btn_addUser_Click(object sender, EventArgs e)
        {
            query = String.Format("INSERT INTO T_USUARIO(usuario,contraseña,privilegio,nombre,apellidos,calle1,calle2,colonia,codigoPostal,ciudad,pais) VALUES('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')",
            txt_newUser.Text,
            txt_password.Text,
            "1",
            txt_Name.Text,
            txt_LastNames.Text,
            txt_Adress1.Text,
            txt_Adress2.Text,
            txt_Colonia.Text,
            txt_cp.Text,
            txt_ciudad.Text,
            txt_pais.Text);

            if (conectionDB.insert_NewThingInDB(query))
            {
                ClientScript.RegisterStartupScript(GetType(),"example","alert('Usuario creado Exitosamente');",true);
            }
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {

        }
    }
}