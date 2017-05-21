<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="BuildPC.aspx.cs" Inherits="WebApp_Proyecto_Final.BuildPC" %>
<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Construye tu propia computadora</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
    </div>
    <div>
        <asp:Label ID="Label1" runat="server">Elige los componentes de tu soñada computadora</asp:Label>
    </div>
    <div>
        <asp:Label ID="lb_motherBoard" runat="server" Text="Tarjeta Madre:"></asp:Label>
        <asp:DropDownList id="ddl_motherBoards" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="lb_procesador" runat="server" Text="Procesador:"></asp:Label>
        <asp:DropDownList id="ddl_procesadores" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="lb_ram" runat="server" Text="Memoria RAM:"></asp:Label>
        <asp:DropDownList id="ddl_rams" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="lb_GPU" runat="server" Text="(Opcional) Tarjeta Gráfica:"></asp:Label>
        <asp:DropDownList id="ddl_gpus" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="lb_ventilacion" runat="server" Text="Ventilación"></asp:Label>
        <asp:DropDownList id="ddl_ventiladores" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="lb_hdd" runat="server" Text="Disco Duro"></asp:Label>
        <asp:DropDownList ID="ddl_HDD" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Fuente de energía:"></asp:Label>
        <asp:DropDownList id="ddl_fuentes" runat="server"></asp:DropDownList>
    </div>
    <div>
        <asp:Button ID="btn_buy" runat="server" Text="Comprar" />
    </div>
</asp:Content>
