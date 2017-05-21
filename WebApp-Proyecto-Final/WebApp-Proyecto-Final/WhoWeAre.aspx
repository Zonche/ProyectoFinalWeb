<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WhoWeAre.aspx.cs" Inherits="WebApp_Proyecto_Final.WhoWeAre" %>

<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>ZoncheWare</h1>
        <p>Capaces de impresionar</p>
    </div>
    <div>
        <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
    </div>
    <div>
        <h2>Buscamos la forma de lograr tus objetivos.</h2>

    </div>
</asp:Content>
