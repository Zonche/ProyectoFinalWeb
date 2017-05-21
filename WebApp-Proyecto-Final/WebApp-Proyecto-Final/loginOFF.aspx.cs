using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Proyecto_Final
{
    public partial class loginOFF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["privilegio"] != null)
            {
                Session["privilegio"] = null;
                Response.Redirect("Login.aspx");
            }
        }
    }
}