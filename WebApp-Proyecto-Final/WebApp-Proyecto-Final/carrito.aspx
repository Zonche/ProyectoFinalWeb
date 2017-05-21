<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="carrito.aspx.cs" Inherits="WebApp_Proyecto_Final.carrito" %>

<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
    </div>
    <div>
        <div>
            <h2>Mis compras:</h2>
        </div>
        <div>
            <asp:GridView ID="gv_carrito" runat="server"></asp:GridView>
        </div>
        <div>
            <asp:Button ID="btn_confirm" runat="server" Text="Confirmar" />
            <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" />
        </div>
    </div>
</asp:Content>
