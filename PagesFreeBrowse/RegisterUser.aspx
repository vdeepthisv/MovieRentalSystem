<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="TheProject.RegisterUser" MasterPageFile="~/MasterPages/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 138px;
        }
    </style>

</asp:Content>

<asp:Content id="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <div class="page">
        <div class="header">
            <div class="title">
                <h1 align="center">
                    MOVIE RENTAL SYSTEM
                </h1>
            </div>
            </div>
            </div>
    <form id="form1" runat="server">
    <asp:Label ID="Label4" runat="server" Text="REGISTER...." Font-Bold="True" 
        Font-Size="Large"></asp:Label>
    <div class="register">

    <table class="style1">
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtName" runat="server" Width="412px"></asp:TextBox>
            </td>
            <td class="style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Enter the Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label2" runat="server" Text="Date Of Birth:"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="-1">Day</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Value="-1">Month</asp:ListItem>
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem Value="-1">Year</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" class="style2">
                <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="txtAddress" runat="server" Width="410px"></asp:TextBox>
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
                <asp:TextBox ID="txtMobileNo" runat="server" Width="407px"></asp:TextBox>
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
                <asp:Button ID="Button1" runat="server" Text="SUBMIT" onclick="Button1_Click" />
            </td>
            <td class="style3">
                <br />
                <asp:Button ID="Button2" runat="server" Text="RESET"  />
            </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
    </table>
    
    
    </div>
    </form>
</asp:Content>
   