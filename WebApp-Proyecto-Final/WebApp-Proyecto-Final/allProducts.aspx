<%@ Page Title="Productos" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="allProducts.aspx.cs" Inherits="WebApp_Proyecto_Final.products" %>
<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
    </div>
    <div>
        <asp:DropDownList ID="ddl_categoria" runat="server"></asp:DropDownList>
        <asp:DropDownList ID="ddl_tipos" runat="server"></asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text="Buscar:"></asp:Label>
        <asp:TextBox ID="txt_producto" runat="server"></asp:TextBox>
        <asp:Button ID="btn_buscar" runat="server" Text="Buscar" />
    </div>
    <div class="dashboard">
        <asp:GridView ID="gv_allProductos" runat="server"></asp:GridView>
    </div>
</asp:Content>
