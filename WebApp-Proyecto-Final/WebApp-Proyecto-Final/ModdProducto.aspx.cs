using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApp_Proyecto_Final.Utilidades.Class;
namespace WebApp_Proyecto_Final
{
    public partial class ModdProducto : System.Web.UI.Page
    {
        Conexiones_SQL conectionToBD = new Conexiones_SQL();
        string query;
        protected void Page_Load(object sender, EventArgs e)
        {
            txt_description.Text = "";
            txt_inventario.Text = "";
            txt_nameP.Text = "";
            txt_precioP.Text = "";
            btn_delete.Enabled = false;
            btn_modificar.Enabled = false;
        }

        protected void btn_search_Click(object sender, EventArgs e)
        {
            if (ddl_tipo.SelectedIndex != 0)
            {
                if (rb_addProducto.Checked)
                {
                    query = String.Format("SELECT nombreProducto FROM T_PRODUCTO WHERE idcomponente = '{0}' AND nombreProducto = '{1}'",
                    ddl_tipo.SelectedValue,
                    txt_nameP.Text);
                    if (conectionToBD.consultaWhitOnlyOneObject(query, txt_nameP.Text, "nombreProducto"))
                        lb_return.Text = "Nombre no disponible";
                    else
                        lb_return.Text = "Nombre Disponible";
                    query = "";
                }
                else if (rb_moddProducto.Checked || rb_deleteProducto.Checked)
                {
                    query = string.Format("SELECT idcomponente,nombreProducto,precio,descripcion, cantidad FROM T_PRODUCTO WHERE idcomponente = '{0}' AND nombreProducto = '{1}'",
                        ddl_tipo.SelectedValue,
                        txt_nameP.Text);
                    List<string> listaAux = new List<string>();
                    listaAux = conectionToBD.obtener_DatosFromDB(query);
                    ddl_tipo.SelectedValue = listaAux[0];
                    txt_nameP.Text = listaAux[1];
                    txt_precioP.Text = listaAux[2];
                    txt_description.Text = listaAux[3];
                    txt_inventario.Text = listaAux[4];
                }
            }
        }

        protected void brn_add_Click(object sender, EventArgs e)
        {
            if (ddl_tipo.SelectedIndex != 0)
	        {
		        query = string.Format("INSERT INTO T_PRODUCTO(idcomponente,nombreProducto,precio,descripcion, cantidad) VALUES('{0}','{1}','{2}','{3}','{4}')",
                ddl_tipo.SelectedValue,
                txt_nameP.Text,
                txt_precioP.Text,
                txt_description.Text,
                txt_inventario.Text);
                if (conectionToBD.insert_NewThingInDB(query))
                {
                    ClientScript.RegisterStartupScript(GetType(), "InsertComplete", "confirm('Producto registrado exitosamente');", true);
                    query = "";
                }
                else
                {
                    ClientScript.RegisterStartupScript(GetType(), "InsertFailed", "confirm('Producto no pudo ser creado. Faltan datos');", true);
                    query = "";
                }
	        }            
        }

        protected void btn_modificar_Click(object sender, EventArgs e)
        {

        }

        protected void btn_delete_Click(object sender, EventArgs e)
        {

        }

        protected void rb_addProducto_CheckedChanged(object sender, EventArgs e)
        {
            brn_add.Enabled=true;
            btn_modificar.Enabled = false;
            btn_delete.Enabled = false;
        }

        protected void rb_moddProducto_CheckedChanged(object sender, EventArgs e)
        {
            brn_add.Enabled = false;
            btn_modificar.Enabled = true;
            btn_delete.Enabled = false;
            btn_search.Text = "Buscar";
        }

        protected void rb_deleteProducto_CheckedChanged(object sender, EventArgs e)
        {
            brn_add.Enabled = false;
            btn_modificar.Enabled = false;
            btn_delete.Enabled = true;
            btn_search.Text = "Buscar";
        }

        protected void rb_addProducto_CheckedChanged1(object sender, EventArgs e)
        {

        }
    }
}