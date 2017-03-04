<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="TheProject.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="LoginContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
            ForeColor="#000099" Text="CONTACT US...."></asp:Label>
       <br />
        <br />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="262px" ReadOnly="True" 
            TextMode="MultiLine" Width="591px">Movie Rental System

Address: No. 512 Church Street, 
10th Main,5th Cross,Opposite to Axis Bank
J P Nagar
Bangalore-560033

Ph No.:080-12345678
Mob:981234567
</asp:TextBox>
    
    </div>
</asp:Content>
