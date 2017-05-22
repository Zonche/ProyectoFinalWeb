<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ModdProducto.aspx.cs" Inherits="WebApp_Proyecto_Final.ModdProducto" %>
<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
    </div>
    <div>
        <div>
            <div><asp:RadioButton ID="rb_addProducto" Text="Agregar Producto" runat="server" AutoPostBack="true" TabIndex="0" GroupName="rb_opciones" OnCheckedChanged="rb_addProducto_CheckedChanged" Checked="true"/></div>
            <div><asp:RadioButton ID="rb_moddProducto" Text="Modificar Producto" runat="server" AutoPostBack="true" TabIndex="1" GroupName="rb_opciones" OnCheckedChanged="rb_moddProducto_CheckedChanged"/></div>
            <div><asp:RadioButton ID="rb_deleteProducto" Text="Eliminar Producto" runat="server" AutoPostBack="true" TabIndex="2" GroupName="rb_opciones" OnCheckedChanged="rb_deleteProducto_CheckedChanged"/></div>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Tipo:"></asp:Label>
            <asp:DropDownList ID="ddl_tipo" runat="server" AutoPostBack="True" TabIndex="3">
                <asp:ListItem Selected="True" Value="0">--Elige el tipo de componente--</asp:ListItem>
                <asp:ListItem Value="1000">Procesador</asp:ListItem>
                <asp:ListItem Value="1001">Ventilación</asp:ListItem>
                <asp:ListItem Value="1002">Tarjeta Madre</asp:ListItem>
                <asp:ListItem Value="1003">Memoria RAM</asp:ListItem>
                <asp:ListItem Value="1004">Almacenamiento</asp:ListItem>
                <asp:ListItem Value="1005">Tarjeta Gráfica</asp:ListItem>
                <asp:ListItem Value="1006">Gabinete</asp:ListItem>
                <asp:ListItem Value="1007">Fuente de poder</asp:ListItem>
                <asp:ListItem Value="1008">Accesorios</asp:ListItem>
                <asp:ListItem Value="1009">Audio</asp:ListItem>
                <asp:ListItem Value="1010">Monitor</asp:ListItem>
                <asp:ListItem Value="1011">Mouse</asp:ListItem>
                <asp:ListItem Value="1012">Teclado</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txt_nameP" runat="server" MaxLength="20" TabIndex="4"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Verificar" TabIndex="5" OnClick="btn_search_Click"/>
            <asp:Label ID="lb_return" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
            <asp:TextBox ID="txt_precioP" runat="server" MaxLength="6" TabIndex="6" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Inventario:"></asp:Label>
            <asp:TextBox ID="txt_inventario" runat="server" MaxLength="4" TabIndex="7" TextMode="Number"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Características:"></asp:Label>
            <asp:TextBox ID="txt_description" runat="server" TabIndex="8"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="brn_add" runat="server" Text="Agregar" TabIndex="9" OnClick="brn_add_Click" />
            <asp:Button ID="btn_modificar" runat="server" Text="Modificar" TabIndex="10" OnClick="btn_modificar_Click"/>
            <asp:Button ID="btn_delete" runat="server" Text="Eliminar" OnClick="btn_delete_Click" TabIndex="11"/>
        </div>
    </div>
</asp:Content>
