<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="EditMovie.aspx.cs" Inherits="delete2.EditMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id='divsearch'>
        <asp:Label ID="Label1" CssClass="style9" runat="server" Text="Filter By" ></asp:Label>
    
        <table class="style1">
            <tr>
                <td class="style6">
                    <asp:Label ID="lblMovieName" runat="server" Text=" Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="txtMovieName" runat="server" Width="187px"></asp:TextBox>
                </td>
                <td class="style4">
                    <asp:Button ID="btnMovieName" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnuser_Click" /></td>
                <td class="style7">
                    <asp:Label ID="lblbymovie" runat="server" Text="Movie ID"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="txtMovieid" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Button ID="btnMovieid" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnmovie_Click" style="margin-left: 0px" /></td>
                
            </tr>
            
            <tr>
                <td>

                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="lblAdditionDate" runat="server" Text="Date Of Addition"></asp:Label>
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
                    <asp:Calendar ID="Calendar1" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
                
            </tr>
        </table> 
    </div>


        <br />
        <asp:Label ID="Label4" CssClass="style9" runat="server"  >No Entry Found</asp:Label>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateEditButton="True">
        </asp:GridView>
</asp:Content>
