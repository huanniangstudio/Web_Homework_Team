<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowQuestion.aspx.cs" Inherits="WebApplication1.ShowQuestion1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .auto-style5 {
            font-size: medium;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server">
        &nbsp;<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
            <tr>
                <td height="20" class="auto-style4">
                    <div align="center">
                        <span style="font-size: 11pt">标题：</span></div>
                </td>
                <td style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')" class="auto-style3">&nbsp;
                    <asp:TextBox ID="r_title" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="20" class="auto-style4">
                    <div align="center">
                        问题<span class="auto-style5">：</span></div>
                </td>
                <td height="20" style="background-image: url('http://localhost:6159/myBLog/images/01.jpg')" class="auto-style3">&nbsp;<textarea id="r_content" runat="server" cols="40" name="r_content" rows="6" style="left: -7px; position: relative; top: 0px; background-color: ghostwhite">
                    </textarea> </td>
            </tr>
            <tr>
                <td height="20" class="auto-style4">&nbsp;&nbsp; <span class="auto-style5">&nbsp;回答</span></td>
                <td style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')" class="auto-style3">&nbsp;
                    <textarea id="r_content0" runat="server" cols="40" name="r_content0" rows="6" style="left: -7px; position: relative; top: 0px; background-color: ghostwhite">
                    </textarea></td>
            </tr>
            <tr>
                <td align="center" colspan="2" height="20" style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回" />
                    &nbsp;
                    </td>
            </tr>
        </table>
        <p>
            &nbsp;</p>
        <h2>&nbsp;</h2>
        <h2>&nbsp;</h2>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
