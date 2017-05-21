using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Proyecto_Final
{
    public partial class menuDashBoard : System.Web.UI.UserControl
    {
        public void Page_Load(object sender, EventArgs e)
        {
            if (Session["privilegio"].Equals("1"))
            {
                menu.Items[1].ChildItems[1].Enabled = false;
                menu.Items[1].ChildItems[2].Enabled = false;
                menu.Items[1].ChildItems[3].Enabled = false;
                menu.Items[4].ChildItems[1].Enabled = false;
            }
            else
            {
                menu.Items[1].ChildItems[1].Enabled = true;
                menu.Items[1].ChildItems[2].Enabled = true;
                menu.Items[1].ChildItems[3].Enabled = true;
                menu.Items[4].ChildItems[1].Enabled = true;
            }
        }
    }
}