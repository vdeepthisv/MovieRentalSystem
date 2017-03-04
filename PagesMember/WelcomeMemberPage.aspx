<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true"
    CodeBehind="WelcomeMemberPage.aspx.cs" Inherits="TheProject.Members.WelcomeMemberPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style6
        {
            width: 142px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" runat="server">
    <table>
    <tr>
    <td>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="#000066"> welcome <%=Session["UserID"].ToString().ToUpper() %></asp:Label>
        </td>
        <td>
        <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false"
            IncludeStyleBlock="false" Orientation="Horizontal">
            <Items>
                <asp:MenuItem Text="Account Settings" Value="Account Settings" NavigateUrl="~/Members/AccountSettings.aspx" />
                <asp:MenuItem NavigateUrl="~/ContactUs.aspx" Text="Contact Us" 
                    Value="ContactUs"></asp:MenuItem>
                <asp:MenuItem Text="LogOut" Value="LogOut" NavigateUrl="~/Default.aspx" />
            </Items>
                     </asp:Menu>
                     </td>
                     </tr>
     </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

     <div>
                  
            <table style="width: 930px" >
                <tr>
                    <td class="style6" >
                        <asp:DropDownList ID="DropDownList1" runat="server" EnableTheming="True" 
                            Width="127px" >
                            <asp:ListItem Value="-1">--Language--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td >
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="22px" Width="127px" style="margin-left: 19px" 
                           >
                            <asp:ListItem Value="-1">--Genre--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td >
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="22px" Width="127px" 
                           >
                            <asp:ListItem Value="-1">--Quality--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td >
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="127px" 
                            >
                            <asp:ListItem Value="-1">--Year--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td align="right" >
                        <asp:TextBox ID="txtSearch" runat="server" style="margin-left: 0px" 
                            Width="137px" ></asp:TextBox>
                    </td>
                    <td >
                        <asp:Button ID="Button1" runat="server" Font-Italic="True" Font-Size="Small" 
                            style="margin-left: 6px" Text="Search" Width="55px" />
                    </td>
                    </tr>
                    </table>
                    <table align="center">
                    <asp:Label ID="NoEntryFound" runat="server" Font-Bold="true" Font-Size="16" Text="No Entry Found"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </table>
             </div>
             
</asp:Content>
  