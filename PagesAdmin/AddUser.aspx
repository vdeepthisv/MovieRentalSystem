<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true"
    CodeBehind="AddUser.aspx.cs" Inherits="delete2.AddUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 633px;
        }
        .style2
        {
            width: 178px;
        }
        .style3
        {
            width: 97px;
        }
        .style4
        {
            font-size: 18;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" CssClass="style4" Text="Filter By"></asp:Label>
        <table class="style1">
            <tr>
                <td class="style6">
                    <asp:Label ID="lblRegReq" runat="server" Text="Reg. ID"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtRegReq" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style3">
                    <asp:Button ID="btnRegReq" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnRegReq_Click"  />
                </td>
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

    <div>
        <asp:Label ID="Label2" cssclass="style4" runat="server" Text="No Entry Found"></asp:Label>
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:ButtonField CommandName="AddUser" Text="Add" />
            </Columns>
        </asp:GridView>
    </div>


</asp:Content>
