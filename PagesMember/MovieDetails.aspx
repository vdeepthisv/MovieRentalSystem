<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="MovieDetails.aspx.cs" Inherits="delete2.MovieDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 158px;
            height: 91px;
        }
        .style3
        {
            height: 91px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
                </asp:DetailsView>
            </td>
            <td class="style3">
                
                <br />
                <table class="style1">
                    <tr>
                    <td>
                    <asp:Button ID="btnRent" runat="server" onclick="btnRent_Click" Text="Rent" />
                    </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Your Request Has Been Accepted." 
                                Visible="False"></asp:Label>
                        </td>
                    </tr>
                </table>
                            <asp:Label ID="Label3" runat="server" Text="Please Collect it within 3 days." 
                                Visible="False"></asp:Label>
                <br />
            </td>
        </tr>
        
    </table>
    <div>
        <br />
    </div>
</asp:Content>
