<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true"
    CodeBehind="RequestHistory.aspx.cs" Inherits="delete2.RequestHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 128px;
        }
        .style4
        {
            width: 58px;
        }
        .style6
        {
            width: 86px;
        }
        .style7
        {
            width: 66px;
        }
        .style8
        {
            width: 7px;
        }
        .style9
        {
            font-size: 15;
            font-weight: bold;
        }
        .style10
        {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id='divsearch'>
        <asp:Label ID="Label1" CssClass="style9" runat="server" Text="Filter By"></asp:Label>
        <table class="style1">
            <tr>
                <td class="style6">
                    <asp:Label ID="lblbyuser" runat="server" Text="User ID"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtuser" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Button ID="btnuser" runat="server" Text="O" Height="21px" Width="16px" OnClick="btnuser_Click" />
                </td>
                <td class="style7">
                    <asp:Label ID="lblbymovie" runat="server" Text="Movie ID"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtmovie" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Button ID="btnmovie" runat="server" Text="O" Height="21px" Width="16px" OnClick="btnmovie_Click"
                        Style="margin-left: 0px" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" Text="Borrow ID"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtBorrowid" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Button ID="btnBorrowid" runat="server" Text="O" Height="21px" Width="16px" OnClick="btnBorrowid_Click" />
                </td>
                <td class="style7">
                    <asp:Label ID="Label3" runat="server" Text="Request ID"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtRequestid" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Button ID="btnRequestid" runat="server" Text="O" Height="21px" Width="16px"
                        OnClick="btnRequestid_Click" Style="margin-left: 0px" />
                </td>
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
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                    </asp:Calendar>
                </td>
                <td class="style4">
                    <asp:Button ID="btnNotIssued" runat="server" Text="Not Issued" Style="margin-left: 23px"
                        Width="81px" OnClick="btnNotIssued_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <asp:Label ID="Label4" CssClass="style9" runat="server">No Entry Found</asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True">
        <AlternatingRowStyle BackColor="#999999" />
    </asp:GridView>
</asp:Content>
