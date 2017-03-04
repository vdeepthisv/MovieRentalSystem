<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Member.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="TheProject.Members.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label1" runat="server" Text="Enter your FeedBack below:" Font-Italic="True" Font-Bold="True" Font-Size="Large"></asp:Label>
    <br />

<asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" 
        Width="600px" style="margin-left: 13px"></asp:TextBox>
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="Button1_Click" />

<asp:Label ID="Label2" runat="server"></asp:Label>

</asp:Content>
