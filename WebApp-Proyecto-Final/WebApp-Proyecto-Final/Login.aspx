<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApp_Proyecto_Final.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>¡Bienvenido!</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:Cambria;
                font-size:120%;">

   <div class="login_user" 
         style="text-align:center;
         padding-top:21%;
         padding-bottom:3px;">

        <asp:Label ID="Lbl_user" runat="server" Text="Usuario:"></asp:Label>
        <asp:TextBox ID="txt_user" runat="server" MaxLength="20" Width="135px"></asp:TextBox>
    </div>
    <!--Contenedor para el cuadro de password -->
    <div class="login_password" 
        style="text-align:center;
               padding-top:10px; 
               padding-bottom:10px;
               padding-right:30px;">
        <asp:Label ID="lbl_password" runat="server" Text="Contraseña:"></asp:Label>
        <asp:TextBox ID="txt_password" runat="server" TextMode="Password" MaxLength="18" Width="135px" ></asp:TextBox>
    </div>

    <!-- Contenedor para el bóton -->
    <div class="login_buton"
        style="text-align:center;
               padding-top:10px;
               padding-bottom:8px;">
        <asp:Button ID="btn_ingresar" runat="server" Text="Aceptar" OnClick="btn_ingresar_Click"/>
    </div>

    <!--Contenedor para el hipervinculo de registro -->
    <div class="login_newRegister" 
        style="text-align:center;">

        <asp:Label ID="lbl_info_user" runat="server" Text="¿Aún no cuentas con un usuario?"></asp:Label>
        <asp:HyperLink ID="hpl_newUser" runat="server" NavigateUrl="~/Cuenta.aspx">Crear usuario</asp:HyperLink>

    </div>

    </div>
    <!-- Contenedor para un cuadro en Usuario-->
    </form>
</body>
</html>
