<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="delete2.Role" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    


    <table class="style1">
        <tr>
            <td>
               <asp:GridView ID="GridView1" runat="server">
                  </asp:GridView>
               </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAddRole" runat="server" Text="Add Role" Height="25px" 
                    Width="78px" onclick="btnAddRole_Click" /></td>
        </tr>
        <tr>
            <td>
                 <asp:Panel ID="PanelAddRole" runat="server" Visible=false Height="31px">
                  <table>
                      <tr>
                          <td>
                              <asp:Label ID="lblName" runat="server" Text="Role Name"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                        <td>
                          <asp:Button ID="btnSaveRole" runat="server" Text="Save Role" Height="25px" 
                                Width="78px" onclick="btnSaveRole_Click" />
                        </td>
                      </tr>
                  </table>
               </asp:Panel>
            </td>
        </tr>
    </table>


</asp:Content>
