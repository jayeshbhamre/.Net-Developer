<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="ASPExportImport.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="margin-top:40px; text-align:center"><font color="purple">Delete Student Record</font></h2>
     <table style="margin-top:50px;border:3px solid Black" cellpadding="10" align="center" >
       
        <tr>            
            
            <td style="background-color:yellow">
                <asp:Label ID="Label1" runat="server" Text="Enter Student ID :" Font-Bold="true"></asp:Label>
            </td>
            <td style="background-color:yellow">
                <asp:TextBox ID="txt_Student_Id" runat="server" Width="80px" BorderStyle="None"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="80px" Font-Bold="True" OnClick="btnDelete_Click"/>
            </td>
        </tr>        
        <tr>
            <td colspan="2"  align="center" >
                <asp:Label ID="Label2" runat="server" Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
