<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Genre.aspx.cs" Inherits="delete2.Genre" %>
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
                <asp:Button ID="btnAddGenre" runat="server" Text="Add Genre" Height="25px" 
                    Width="78px" onclick="btnAddGenre_Click" /></td>
        </tr>
        <tr>
            <td>
                 <asp:Panel ID="PanelAddGenre" runat="server" Visible=false Height="31px">
                  <table>
                      <tr>
                          <td>
                              <asp:Label ID="lblGenre" runat="server" Text="Genre Name"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                        <td>
                          <asp:Button ID="btnSaveGenre" runat="server" Text="Save Genre" Height="25px" 
                                Width="78px" onclick="btnSaveGenre_Click" />
                        </td>
                      </tr>
                  </table>
               </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
