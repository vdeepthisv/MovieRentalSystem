<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="Quality.aspx.cs" Inherits="delete2.Quality" %>
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
                <asp:Button ID="btnAddQuality" runat="server" Text="Add Quality" Height="25px" 
                    Width="78px" onclick="btnAddQuality_Click" /></td>
        </tr>
        <tr>
            <td>
                 <asp:Panel ID="PanelAddQuality" runat="server" Visible=false Height="31px">
                  <table>
                      <tr>
                          <td>
                              <asp:Label ID="lblQuality" runat="server" Text="Quality Name"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtQuality" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                        <td>
                          <asp:Button ID="btnSaveQuality" runat="server" Text="Save Quality" Height="25px" 
                                Width="78px" onclick="btnSaveQuality_Click" />
                        </td>
                      </tr>
                  </table>
               </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
