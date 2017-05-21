<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Cuenta.aspx.cs" Inherits="WebApp_Proyecto_Final.Cuenta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Configuración de cuenta</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>ZoncheWare</h1>
        <p>Capaces de impresionar</p>
    </div>
    <div>
        <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
        <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
        <asp:Button ID="btn_search" runat="server" Text="Verificar" OnClick="btn_search_Click"/>
        <asp:Label ID="lb_checador" runat="server" Text=""></asp:Label>
    </div>
        <div>
            <asp:Label ID="Label8" runat="server" Text="Contraseña:"></asp:Label>
            <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
    <div>
        <asp:Label ID="Label2" runat="server" Text="Nombres:"></asp:Label>
        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label3" runat="server" Text="Apellidos:"></asp:Label>
        <asp:TextBox ID="txt_LastName" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label4" runat="server" Text="Dirección #1:"></asp:Label>
        <asp:TextBox ID="txt_Direccion1" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label5" runat="server" Text="Dirección #2:"></asp:Label>
        <asp:TextBox ID="txt_Direccion2" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label6" runat="server" Text="Colonia:"></asp:Label>
        <asp:TextBox ID="txt_colonia" runat="server"></asp:TextBox>
    </div>
    <div>
        <asp:Label ID="Label7" runat="server" Text="Código Postal:"></asp:Label>
        <asp:TextBox ID="txt_cp" runat="server"></asp:TextBox>
    </div>
    <div>
            <asp:Label ID="lbl_Ciudad" runat="server" Text="Ciudad:"></asp:Label>
            <asp:TextBox ID="txt_ciudad" runat="server"></asp:TextBox>
        </div>
    <div>
            <asp:Label ID="lbl_Pais" runat="server" Text="País:"></asp:Label>
            <asp:TextBox ID="txt_pais" runat="server"></asp:TextBox>
     </div>
    <div>
        <asp:Button ID="btn_registrar" runat="server" Text="Registrarse" OnClick="Button1_Click"/>
        <asp:Button ID="btn_cancel" runat="server" Text="Cancelar" OnClick="btn_cancel_Click"/>
    </div>
</asp:Content>
