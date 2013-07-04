
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    密码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="登录" />

    <br />
    -----------------------------------------注备<br />
    初始学生身份：<br />
    用户名：请叫我欢娘<br />
    密码：1234<br />
    <br />
    初始教师身份：<br />
    用户名：请叫我靖哥哥<br />
    密码：1234<br />
    <br />
    <br />
    <br />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
