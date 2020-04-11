<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="ASPExportImport.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 678px;
        }
        .auto-style5 {
            width: 259px;
        }
        .auto-style6 {
            width: 743px;
            height: 145px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="margin-top:40px; text-align:center"><font color="purple">Search and Update Student Record</font></h2>
    <table align="center" style="margin-top:20px; " cellpadding="15px" class="auto-style6">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="Enter Student Id :" Font-Bold="True" Font-Size="Large"></asp:Label>&nbsp;
                <asp:TextBox ID="Txt_Search" runat="server" Width="100px"></asp:TextBox>&nbsp;
                <strong>
                <asp:Button ID="BtnShow" runat="server" Text="Show" Font-Bold="True" OnClick="BtnShow_Click" />
                </strong>
            </td>
              
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" Text="" Font-Size="Large"></asp:Label>
                <br />
                <br />
             
                <table runat="server" id="StudentResult" visible="false" cellpadding="2" class="auto-style3" > 
                    <tr >
                        <td align="center" class="auto-style5">
                            <asp:Label ID="Label3" runat="server" Width="120px" Text="Student Name :" Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label4" runat="server" Width="120px" Text="Student City :" Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label5" runat="server" Width="120px" Text="Student Age :" Font-Bold="true" Font-Size="Large" ForeColor="Black"></asp:Label>    
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="auto-style5">
                            <asp:TextBox ID="txt_Name" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        <td align="center">
                            <asp:TextBox ID="txt_City" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        <td align="center">
                            <asp:TextBox ID="txt_Age" runat="server" Width="120px"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Update Record" Font-Bold="True" OnClick="btnUpdate_Click" Height="33px" />         
                            
                        </td>
                    </tr>
                    </table>                  
           </td>
        </tr>
    </table>
  
</asp:Content>
