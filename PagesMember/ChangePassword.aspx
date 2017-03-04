<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Member.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="TheProject.Members.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Existing Password:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px" textmode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter the Currrent Password"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="New Password:"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox2" runat="server" Width="200px" textmode="Password"
                  ></asp:TextBox>
            </td>
            <td class="style4">
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Confirm New Password:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox3" runat="server" Width="200px" textmode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox3" ControlToValidate="TextBox2" 
                    ErrorMessage="Passwords must match" Display="Dynamic"></asp:CompareValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            </td>
            <td class="style5">
                <asp:Button ID="Button2" runat="server" Text="Reset" />
            </td>
            <td>
                &nbsp;</td>
        </tr> 
    </table>
   <%--   <asp:Button ID="Button4" runat="server" Text="Back" onclick="Button4_Click" />--%>
</asp:Content>
