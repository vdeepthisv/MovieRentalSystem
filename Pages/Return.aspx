<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Return.aspx.cs" Inherits="MovieRentalSystem.Pages.Return" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">


<div id='divsearch'>
        <asp:Label ID="Label1" CssClass="style9" runat="server" Text="Filter By" ></asp:Label>
    
        <table class="style1">
            <tr>
                <td class="style6">
                    <asp:Label ID="lblbyuser" runat="server" Text="User ID"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtuser" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Button ID="btnuser" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnuser_Click" /></td>
                <td class="style7">
                    <asp:Label ID="lblbymovie" runat="server" Text="Movie ID"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtmovie" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Button ID="btnmovie" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnmovie_Click" style="margin-left: 0px" /></td>
                
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Text="Borrow ID"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtBorrowid" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Button ID="btnBorrowid" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnBorrowid_Click" /></td>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Request ID"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtRequestid" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Button ID="btnRequestid" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnRequestid_Click" style="margin-left: 0px" /></td>
                
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">On</asp:ListItem>
                        <asp:ListItem Value="2">Before</asp:ListItem>
                        <asp:ListItem Value="3">After</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
                
            </tr>
        </table> 
    </div>


        <br />
        <asp:Label ID="Label4" CssClass="style9" runat="server"  >No Entry Found</asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        onrowcommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField CommandName="return" Text="Return" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" 
        onitemcommand="DetailsView1_ItemCommand" >
        <Fields>
            <asp:ButtonField CommandName="paid" Text="Fine Settled" />
        </Fields>
    </asp:DetailsView>
</asp:Content>
