<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="BlockUser.aspx.cs" Inherits="delete2.BlockUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 620px;
        }
        .style2
        {
            width: 26px;
        }
        .style4
        {
            width: 32px;
            font-size: 18;
            font-weight: bold;
        }
        .style6
        {
            width: 201px;
        }
        .style7
        {
            width: 190px;
        }
        .style8
        {
            width: 266px;
        }
        .style9
        {
            width: 228px;
        }
        .style10
        {
            width: 103px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" CssClass="style4" Text="Filter By"></asp:Label>
        <table class="style1">
            <tr>
                <td class="style6">
                    <asp:Label ID="lblUser" runat="server" Text="User ID"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtUser" runat="server" Width="185px"></asp:TextBox>
                </td>
                <td class="style8">
                    <asp:Button ID="btnUser" runat="server" Text="O" Height="21px" Width="16px" 
                        onclick="btnUser_Click"  />
                </td>

                <td class="style10">
                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                </td>
                
                <td class="style7">
                    <asp:TextBox ID="txtName" runat="server" Width="190px"></asp:TextBox>
                </td>
                
                <td class="style9">
                    <asp:Button ID="btnName" runat="server" Text="O" Height="21px" Width="16px" onclick="btnName_Click" 
                          />
                </td>
                
             </tr>
              
        </table>
    </div>

    <div>
        <asp:Label ID="Label2" runat="server" cssclass="style4" Text="No Entry Found"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" onrowcommand="GridView1_RowCommand">
            <Columns>
                <asp:ButtonField CommandName="Block" Text="Block" />
            </Columns>
        </asp:GridView>


    </div>

</asp:Content>

