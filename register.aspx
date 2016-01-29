<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height:auto;">
    <form id="form1" runat="server">
    <div style="text-align:center;">
        WELCOME<br /><br />
        Sign up as new user
        </div>
        <br />
        <br />
        First name:
        <asp:TextBox ID="fnametextbox" runat="server" Height="16px" Width="234px"></asp:TextBox>
        <br />
        <br />
        Last name:
        <asp:TextBox ID="lnametextbox" runat="server" Width="234px"></asp:TextBox>
        <br />
        <br />
        Sex:
        <asp:RadioButton ID="male" runat="server" Text="Male" GroupName="sex" />
        <asp:RadioButton ID="female" runat="server" Text="Female" GroupName="sex" />
        <br />
        <br />
        Department:
        <asp:DropDownList ID="department" runat="server" DataSourceID="SqlDataSource1" DataTextField="departments" DataValueField="departments">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TDMConnectionString %>" SelectCommand="SELECT [departments] FROM [depts]"></asp:SqlDataSource>
        <br />
        <br />
        Address:
        <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        Tel. number:
        <asp:TextBox ID="tel_number" runat="server" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        Mobile number:
        <asp:TextBox ID="mob_number" runat="server" TextMode="Phone"></asp:TextBox>
        <br />
        <br />
        Email id:
        <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
        <br />
        <br />
        Username:
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        <br />
        Passoword:
        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        Confirm Password:
        <asp:TextBox ID="conf_password" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Sign up..!" style="margin-left:500px;" OnClick="Button1_Click" />
        <br />
        </form>
</body>
</html>
