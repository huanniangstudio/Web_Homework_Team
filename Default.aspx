<%@ Page Title="答疑系统作业展示" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>答疑系统展示</h2>
            </hgroup>
            <p>
                此网站展示了我们B2组制作的答疑系统
                。因为确实实际上只有我们小组在做，不过不管怎样，还是尽力交差了，个人觉得网站写得很烂，希望下次有机会再努力。</p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:Button ID="Button3" runat="server" Height="96px" OnClick="Button3_Click" Text="系统入口" Width="460px" />
    </h2>
<h2>
        课程作业链接：</h2>
<h2>
        陈耀欢<a href="http://homework-1.apphb.com/">http://homework-1.apphb.com/</a></h2>
<h2>
        黄永福</h2>
<p>
        &nbsp;</p>
<p>
        &nbsp;</p>
</asp:Content>
