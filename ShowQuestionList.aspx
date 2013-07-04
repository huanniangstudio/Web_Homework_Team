<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowQuestionList.aspx.cs" Inherits="WebApplication1.ShowQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p style="margin-left: 40px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" AllowSorting="True" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Questioner" HeaderText="提问用户" SortExpression="Questioner" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ShowQuestion.aspx?ID={0}" DataTextField="Title" HeaderText="标题" NavigateUrl="ShowQuestion.aspx" SortExpression="Title" />
                <asp:BoundField DataField="AddTime" HeaderText="提问时间" SortExpression="AddTime" />
                <asp:BoundField DataField="Categories" HeaderText="问题类别" SortExpression="Categories" />
                <asp:BoundField DataField="Importance" HeaderText="问题评价" SortExpression="Importance" />
                <asp:BoundField DataField="ReplyTime" HeaderText="回复时间" SortExpression="ReplyTime" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT [ReplyContents], [ID], [Questioner], [Title], [AddTime], [Importance], [Categories], [Contents], [ReplyTime] FROM [Question]" OnSelecting="SqlDataSource2_Selecting"></asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="我要提问" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="按评价排序" OnClick="Button2_Click" />
    </p>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
