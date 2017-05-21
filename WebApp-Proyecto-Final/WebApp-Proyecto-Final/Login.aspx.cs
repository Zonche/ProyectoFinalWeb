using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp_Proyecto_Final.Utilidades.Class;

namespace WebApp_Proyecto_Final
{
    public partial class login : System.Web.UI.Page
    {
        Conexiones_SQL conectionToBD = new Conexiones_SQL();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_ingresar_Click(object sender, EventArgs e)
        {
            menuDashBoard menu = new menuDashBoard();
            string query = String.Format("SELECT  usuario, contraseña,privilegio FROM T_USUARIO WHERE usuario = '{0}' AND contraseña = '{1}'",
                txt_user.Text,
                txt_password.Text);
            if (conectionToBD.Login_Pass(query, txt_user.Text, txt_password.Text) == true)
            {
                Session["usuario"] = txt_user.Text;
                Session["privilegio"] = conectionToBD.privilegio;
                Response.Redirect("homePage.aspx");
            }
        }

    }
}