<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Language.aspx.cs" Inherits="delete2.Language" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
                <asp:Button ID="btnAddLanguage" runat="server" Text="Add Language" Height="25px" 
                    Width="98px" onclick="btnAddRole_Click" /></td>
        </tr>
        <tr>
            <td>
                 <asp:Panel ID="PanelAddRole" runat="server" Visible=false Height="31px">
                  <table>
                      <tr>
                          <td>
                              <asp:Label ID="lblLanguage" runat="server" Text="Language"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtLanguage" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                        <td>
                          <asp:Button ID="btnSaveLanguage" runat="server" Text="Save Language" Height="25px" 
                                Width="100px" onclick="btnSaveLanguage_Click" />
                        </td>
                      </tr>
                  </table>
               </asp:Panel>
            </td>
        </tr>
    </table>


</asp:Content>
