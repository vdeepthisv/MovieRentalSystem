<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="TheProject.Admins.Movies.AddMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 523px;
        }
        .style5
        {
            width: 50%;
        }
        .style6
        {
            width: 112px;
        }
        .style7
        {
            width: 494px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <table class="style3">
        <tr>
            <td style=text-align:right class="style5">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Movie Name"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style=text-align:right class="style5">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Language"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList6" runat="server" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style=text-align:right class="style5">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Genre"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList7" runat="server" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style=text-align:right class="style5">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Type"></asp:Label>
            </td>
            <td class="style6">
                <asp:DropDownList ID="DropDownList8" runat="server" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style=text-align:right class="style5">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Year"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  align="right" class="style5" style="text-align:right">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Availability"></asp:Label>
            </td>
            <td class="style6" style="text-align:center">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table class="style3">
        <tr>
            <td class="style4"  style="text-align:right" >
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Discontinue"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Date Of Addition"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4"style="text-align:right">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Price"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Fine"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Producer"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Director"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Cast"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Sensor Grade"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="129px">
                    <asp:ListItem Value="-1">Select grade</asp:ListItem>
                    <asp:ListItem>U</asp:ListItem>
                    <asp:ListItem>U/A</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Rating"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" 
                    ForeColor="Blue" Text="Image"></asp:Label>
            </td>
            <td class="style7">
                <asp:Image ID="Image2" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                &nbsp;</td>
            <td class="style7">
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style4" style="text-align:right">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                    Text="Submit" />
            </td>
        </tr>
        </table>

    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

</asp:Content>
