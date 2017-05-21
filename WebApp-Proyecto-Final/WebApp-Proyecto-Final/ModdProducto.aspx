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
            <asp:Label ID="Label4" runat="server" Text="Tipo:"></asp:Label>
            <asp:DropDownList ID="ddl_tipo" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txt_nameP" runat="server"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Buscar" />
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Precio:"></asp:Label>
            <asp:TextBox ID="txt_precioP" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Inventario:"></asp:Label>
            <asp:TextBox ID="txt_inventario" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Características:"></asp:Label>
            <asp:TextBox ID="txt_description" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="brn_add" runat="server" Text="Agregar" />
            <asp:Button ID="btn_modificar" runat="server" Text="Modificar" />
            <asp:Button ID="btn_delete" runat="server" Text="Eliminar" />
        </div>
    </div>
</asp:Content>
