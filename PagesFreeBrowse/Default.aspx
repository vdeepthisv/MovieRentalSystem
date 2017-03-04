<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MovieRentalSystem.PagesFreeBrowse.Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .Login
        {
            height: 167px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Login" runat="server" ContentPlaceHolderID="LoginContent">
    <table>
        <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
        </td>
            <td align="right" >
                <asp:Label ID="Label1" runat="server" Text="UserName:" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td align="right" >
                <asp:Label ID="Label2" runat="server" Text="Password:" Font-Bold="True" Font-Size="Small"></asp:Label>
            </td>
            <td >
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td align="right" >
                <asp:Button ID="btnlogin" runat="server" Text="Log In" />
            </td>
            <td >
                <asp:Button ID="btnReg" runat="server" Text="Register" 
                    OnClick="btnReg_Click" />
                
            </td>
            <td >
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ContactUs.aspx" ForeColor="blue"
                    Font-Bold="True">Contact Us</asp:HyperLink>
                    </td>
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="MainContent">
    
    <div>
                  
            <table style="width: 930px" >
                <tr>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" EnableTheming="True" 
                            Width="127px" >
                            <asp:ListItem Value="-1">--Language--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="127px" DataTextField="Genre" 
                           >
                            <asp:ListItem Value="-1">--Genre--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="127px" 
                           >
                            <asp:ListItem Value="-1">--Quality--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="127px" 
                            >
                            <asp:ListItem Value="-1">--Year--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="right" class="style3">
                        <asp:TextBox ID="txtSearch" runat="server" Width="220px"  
                            style="margin-left: 0px"></asp:TextBox>
                    </td>
                    <td class="style3">
                        <asp:Button ID="Button3" runat="server" Font-Italic="True" Font-Size="Small" 
                            style="margin-left: 6px" Text="Search" Width="55px" />
                    </td>
                </tr>
                </table>
                <table align="center">
                <tr align="center">
                <asp:Label ID="NoEntryFound"  Width="100px" runat="server" Font-Bold="true" Font-Size="16" Text="No Entry Found"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </tr>
                </table>
             </div>
    
</asp:Content>
