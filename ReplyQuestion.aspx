<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReplyQuestion.aspx.cs" Inherits="WebApplication1.ReplyQuestion" %>
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



    <table align="center" border="0" cellpadding="0" cellspacing="0" width="98%" __designer:mapid="346">
        <tr>
                <td height="20" class="auto-style4" __designer:mapid="321">
                    <div align="center" __designer:mapid="322">
                        <span style="font-size: 11pt" __designer:mapid="323">标题：</span></div>
                </td>
                <td style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')" class="auto-style3" __designer:mapid="324">&nbsp;
                    <asp:TextBox ID="r_title0" runat="server" ReadOnly="True" ></asp:TextBox>
                </td>
            </tr>
        <tr>
                <td height="20" class="auto-style4" __designer:mapid="327">
                    <div align="center" __designer:mapid="328">
                        问题<span class="auto-style5" __designer:mapid="329">：</span></div>
                </td>
                <td height="20" style="background-image: url('http://localhost:6159/myBLog/images/01.jpg')" class="auto-style3" __designer:mapid="32a">&nbsp;<textarea id="r_content0" runat="server" cols="40" name="r_content0" rows="6" style="left: -7px; position: relative; top: 0px; background-color: ghostwhite" __designer:mapid="32b" aria-readonly="True">
                    </textarea> </td>
            </tr>
        <tr __designer:mapid="347">
            <td height="20" class="auto-style4" __designer:mapid="348">&nbsp;</td>
            <td style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')" class="auto-style3" __designer:mapid="34b">&nbsp;</td>
        </tr>
        <tr __designer:mapid="34d">
            <td height="20" class="auto-style4" __designer:mapid="34e">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 内容：</td>
            <td height="20" style="background-image: url('http://localhost:6159/myBLog/images/01.jpg')" class="auto-style3" __designer:mapid="351">&nbsp;<textarea id="r_content" runat="server" cols="40" name="r_content" rows="6" style="left: -7px; position: relative; top: 0px; background-color: ghostwhite" __designer:mapid="352">
                    </textarea> </td>
        </tr>
        <tr __designer:mapid="353">
            <td height="20" class="auto-style4" __designer:mapid="354">&nbsp;&nbsp; <span class="auto-style5" __designer:mapid="355">&nbsp;问题评价：</span> </td>
            <td style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')" class="auto-style3" __designer:mapid="356">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="False" DataSource="<%#myArray %>" >
                </asp:DropDownList>
                    &nbsp;
                    </td>
        </tr>
        <tr __designer:mapid="358">
            <td align="center" colspan="2" height="20" style="background-image: url('http://localhost:6159/myBLog/images/1294850_472733.gif')" __designer:mapid="359">
                <asp:Button ID="Button1" runat="server"  Text="提交" Height="50px" Width="76px" OnClick="Button1_Click" />
                    &nbsp;
                    </td>
        </tr>
    </table>



</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
