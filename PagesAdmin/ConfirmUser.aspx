<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.Master" AutoEventWireup="true" CodeBehind="ConfirmUser.aspx.cs" Inherits="delete2.ConfirmUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px">
    </asp:DetailsView>
</div>


<div>

  <asp:Panel runat="server" ID="pnlAddBtn">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True">
            <asp:ListItem Value="-1">Role</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Confirm User" 
        onclick="Button1_Click" />
        </asp:Panel>
    <asp:Label ID="lblAddSuc" runat="server" Text="Added Successfully"></asp:Label>
</div>

</asp:Content>
