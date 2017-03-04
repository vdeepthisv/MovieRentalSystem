<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Member.Master" AutoEventWireup="true" CodeBehind="EditData.aspx.cs" Inherits="TheProject.Members.EditData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            margin-left: 22px;
        }
        .style2
        {
            width: 409px;
        }
        .style3
        {
            width: 146px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="style1">
        
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtAddress" runat="server" Width="410px" Height="61px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtAddress" ErrorMessage="Enter the Address"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  align="right" class="style2">
                EmailID:</td>
            <td class="style3">
                <asp:TextBox ID="txtEmailID" runat="server" Width="409px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter the email ID"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtEmailID" ErrorMessage="Enter the correct email id" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td  align="right" class="style2">
                <asp:Label ID="Label5" runat="server" Text="Mobile Number:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtMobileNo" runat="server" Width="404px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtMobileNo" ErrorMessage="Enter the mobile Number"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                    ControlToValidate="txtMobileNo" ErrorMessage="Enter 10 digit number" 
                    MaximumValue="9999999999" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td  align="right" class="style2">
                <br />
                <asp:Button ID="Button1" runat="server" Text="SUBMIT"  />
            </td>
            <td class="style3">
                <br />
                <asp:Button ID="Button2" runat="server" Text="RESET" />
            &nbsp;&nbsp;&nbsp;&nbsp;
               <%-- <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" />--%>
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
