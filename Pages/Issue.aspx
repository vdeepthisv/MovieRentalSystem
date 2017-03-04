<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="Issue.aspx.cs" Inherits="MovieRentalSystem.Pages.Issue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

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
                <td>
                </td>
                <td class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblReqDate" runat="server" Text="Request Date"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style1">

                    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px">
                        <asp:ListItem Value="1">On</asp:ListItem>
                        <asp:ListItem Value="2">Before</asp:ListItem>
                        <asp:ListItem Value="3">After</asp:ListItem>
                    </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged">
                    </asp:Calendar>
                </td>
                
            </tr>
        </table>
    </div>
    <br />
    <asp:Label ID="Label4" CssClass="style9" runat="server">No Entry Found</asp:Label>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True">
        <AlternatingRowStyle BackColor="#999999" />
        <Columns>
            <asp:ButtonField CommandName="issue" Text="Issue" />
        </Columns>
    </asp:GridView>
    <br />
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" 
        onitemcommand="DetailsView1_ItemCommand" >
        <Fields>
            <asp:ButtonField CommandName="paid" Text="Paid" />
        </Fields>
    </asp:DetailsView>


</asp:Content>
