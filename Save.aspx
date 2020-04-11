<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Save.aspx.cs" Inherits="ASPExportImport.Save" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="margin-top:40px; text-align:center"><font color="purple">Enroll New Student</font></h2>
    <table style="margin-top:30px;border:3px double" cellpadding="10" align="center" >
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label5" runat="server" Text="" Font-Size="large" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr style="background-color:yellow">
            <td>
                <asp:Label ID="Label1" runat="server" Text="Enter Student ID :" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Studen_Id" runat="server" Width="120px" BorderStyle="None" ></asp:TextBox>
            </td>
        </tr>
        <tr style="background-color:blue">
            <td>
                <asp:Label ID="Label2" runat="server" Text="Enter Student Name :" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Student_Name" runat="server" Width="120px" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <tr style="background-color:yellow">
            <td>
                <asp:Label ID="Label3" runat="server" Text="Enter Student City :" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Student_City" runat="server" Width="120px" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <tr style="background-color:blue;">
            <td>
                <asp:Label ID="Label4" runat="server" Text="Enter Student Age :" ForeColor="White" Font-Bold="true"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_Student_Age" runat="server" Width="120px" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2"  align="center">
                <asp:Button ID="btnSave" runat="server" Text="Save Record" Width="120px" Font-Bold="True" OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>
</asp:Content>