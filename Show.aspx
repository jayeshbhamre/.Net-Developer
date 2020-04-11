<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Show.aspx.cs" Inherits="ASPExportImport.Show" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="margin-top:40px; text-align:center"><font color="purple">List of All Students</font></h2>
    <br />

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" AlternatingRowStyle-BackColor="Yellow" AutoGenerateColumns="False" DataKeyNames="StudentID">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" ReadOnly="True" SortExpression="StudentID" />
            <asp:BoundField DataField="StudentName" HeaderText="Student Name" SortExpression="StudentName" />
            <asp:BoundField DataField="StudentCity" HeaderText="Student City" SortExpression="StudentCity" />
            <asp:BoundField DataField="StudentAge" HeaderText="Student Age" SortExpression="StudentAge" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource runat="server"  ConnectionString="<%$ ConnectionStrings:AspCrudConnectionString %>" SelectCommand="SELECT * FROM [Student]" ID="SqlDataSource1"></asp:SqlDataSource>
</asp:Content>
