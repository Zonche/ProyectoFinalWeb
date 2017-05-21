<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="WebApp_Proyecto_Final.users" %>

<%@ Register Src="~/menuDashBoard.ascx" TagPrefix="uc1" TagName="menuDashBoard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <uc1:menuDashBoard runat="server" ID="menuDashBoard" />
    </div>
    <div class="NewUser_body">
        <div>
            <asp:Image ID="image_user" runat="server" />
        </div>
        <div>
            <asp:Label ID="lbl_NewUser" runat="server" Text="Usuario:"></asp:Label>
            <asp:TextBox ID="txt_newUser" runat="server"></asp:TextBox>
            <asp:Button ID="btn_search" runat="server" Text="Verificar" OnClick="btn_search_Click" />
        </div>
        <div>
            <asp:Label ID="Label5" runat="server" Text="Contraseña:"></asp:Label>
            <asp:TextBox ID="txt_password" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lbl_Name" runat="server" Text="Nombre:"></asp:Label>
            <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Apellidos:"></asp:Label>
            <asp:TextBox ID="txt_LastNames" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="lbl_Adress" runat="server" Text="Calle #1:"></asp:Label>
            <asp:TextBox ID="txt_Adress1" runat="server"></asp:TextBox>
        </div>  
        <div>
            <asp:Label ID="Label2" runat="server" Text="Calle #2:"></asp:Label>
            <asp:TextBox ID="txt_Adress2" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="Colonia:"></asp:Label>
            <asp:TextBox ID="txt_Colonia" runat="server"></asp:TextBox>
        </div>      
        <div>
            <asp:Label ID="lbl_Cp" runat="server" Text="Código Postal:"></asp:Label>
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
            <asp:Label ID="Label4" runat="server" Text="Permiso:"></asp:Label>
            <asp:DropDownList ID="ddl_permisos" runat="server"></asp:DropDownList>
        </div>
        <div>
            <asp:Button ID="btn_addUser" runat="server" Text="Agregar" OnClick="btn_addUser_Click" />
            <asp:Button ID="btn_moddUser" runat="server" Text="Modificar" />
            <asp:Button ID="btn_deleteUser" runat="server" Text="Eliminar" />
        </div>
    </div>
</asp:Content>
