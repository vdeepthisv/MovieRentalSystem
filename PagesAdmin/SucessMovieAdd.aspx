<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="SucessMovieAdd.aspx.cs" Inherits="TheProject.Admins.Movies.SucessMovieAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td style=text-align:center>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
                    Font-Names="Brush Script MT" Font-Size="XX-Large" Font-Underline="True" 
                    ForeColor="Blue" Text="The Movie Was Sucessfully Entered"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style=text-align:center>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style=text-align:center>
                <asp:Button ID="Button1" runat="server" Text="Back" 
                    PostBackUrl="~/Admins/Movies/AddMovie.aspx" />
            </td>
        </tr>
    </table>
</asp:Content>
