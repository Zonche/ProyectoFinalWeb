<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="WebApp_Proyecto_Final.homePage" %>
<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <!-- Header con imagen-->
        <div class="head_image">
        </div>
        <div class="main">
            <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
        </div>
        <div class="welcome">
            <p>¡Bienvenido!</p>
        </div>
     </div>
</asp:Content>
