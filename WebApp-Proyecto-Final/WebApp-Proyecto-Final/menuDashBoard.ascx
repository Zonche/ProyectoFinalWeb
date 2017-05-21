<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="menuDashBoard.ascx.cs" Inherits="WebApp_Proyecto_Final.menuDashBoard" %>
<asp:Menu ID="menu" runat="server" Orientation="Horizontal">
    <Items>
        <asp:MenuItem Text="Inicio" NavigateUrl="~/homePage.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Productos">
            <asp:MenuItem Text="Buscar" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Agregar Producto" NavigateUrl="~/ModdProducto.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Modificar Productos" NavigateUrl="~/ModdProducto.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Eliminar Productos" NavigateUrl="~/ModdProducto.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Todos los productos" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Categorías" NavigateUrl="~/categoriaProducto.aspx">
                <asp:MenuItem Text="Equipo/PC">
                    <asp:MenuItem Text="MotherBoards" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Procesadores" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="RAM" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Tarjetas Gráficas" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Almacenamiento" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Ventilación" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Fuentes de poder" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Gabinetes" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem Text="Accesorios">
                    <asp:MenuItem Text="Monitores" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Lectoras CD/DVD/Bluerray" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Audio" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Monitores" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Teclados" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                    <asp:MenuItem Text="Mouse" NavigateUrl="~/allProducts.aspx"></asp:MenuItem>
                </asp:MenuItem>
            </asp:MenuItem>
        </asp:MenuItem>
        <asp:MenuItem Text="Construye tu pc" NavigateUrl="~/BuildPC.aspx"></asp:MenuItem>
        <asp:MenuItem Text="¿Quienes somos?" NavigateUrl="~/WhoWeAre.aspx"></asp:MenuItem>
        <asp:MenuItem Text="Mi cuenta">
            <asp:MenuItem Text="Configurar Cuenta" NavigateUrl="~/users.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Modificar Permisos" NavigateUrl="~/users.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Mis compras" NavigateUrl="~/carrito.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Historial de Ventas" NavigateUrl="~/historial.aspx"></asp:MenuItem>
            <asp:MenuItem Text="Cerrar Sesión" NavigateUrl="~/loginOFF.aspx"></asp:MenuItem>
        </asp:MenuItem>
    </Items>
</asp:Menu>