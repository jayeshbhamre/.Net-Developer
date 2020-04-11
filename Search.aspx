<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="ASPExportImport.Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 127px;
        }
        .auto-style2 {
            width: 118px;
        }
        .auto-style3 {
            width: 442px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="margin-top:40px; text-align:center"><font color="purple">Search Student Record</font></h2>
    <table align="center" style="margin-top:50px; width: 712px;" cellpadding="15px">
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="Enter Student Id :"></asp:Label>&nbsp;
                <asp:TextBox ID="Txt_Search" runat="server" Width="100px"></asp:TextBox>&nbsp;
                <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" Text="" Font-Size="Large"></asp:Label>
                <br />
                <table runat="server" id="StudentResult" visible="false" cellpadding="10" style="border-style: dashed; border-color: inherit; border-width: 2px; " class="auto-style3" > 
                    <tr>
                        <td align="left" class="auto-style1">
                            <asp:Label ID="Label3" runat="server" Text="Student ID :" Font-Bold="true" Font-Size="Large"></asp:Label>
                        </td>
                        <td align="left" class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="" Font-Bold="true" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Font-Italic="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style1">
                            <asp:Label ID="Label5" runat="server" Text="Student Name :" Font-Bold="true" Font-Size="Large"></asp:Label>
                        </td>
                        <td align="left" class="auto-style2">
                            <asp:Label ID="Label6" runat="server" Text="" Font-Bold="true" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Font-Italic="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style1">
                            <asp:Label ID="Label7" runat="server" Text="Student City :" Font-Bold="true" Font-Size="Large"></asp:Label>
                        </td>
                        <td align="left" class="auto-style2">
                            <asp:Label ID="Label8" runat="server" Text="" Font-Bold="true" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Font-Italic="false"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="auto-style1">
                            <asp:Label ID="Label9" runat="server" Text="Student Age :" Font-Bold="true" Font-Size="Large"></asp:Label>
                        </td>
                        <td align="left" class="auto-style2">
                            <asp:Label ID="Label10" runat="server" Text="" Font-Bold="true" Font-Names="Arial" Font-Size="Large" ForeColor="Black" Font-Italic="false"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>

        </tr>

    </table>
</asp:Content>
