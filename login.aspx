<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" id="signup">
    
        
    
        <p align="center">LOGIN..!</p>
    
        
    
        <br />
        <br />
        Username:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="username" runat="server" Height="16px" Width="228px" placeholder="Enter username"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        Password:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="password" runat="server" Height="18px" Width="233px" placeholder="Enter password" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <br />
    
        
        <asp:Button ID="submit" runat="server" Text="Login" BorderStyle="Outset" align="center" OnClick="Button1_Click" />
        <br />
        <p align="center">Forgot your password?.. <asp:HyperLink ID="HyperLink1" runat="server">Click here</asp:HyperLink>
        </p>

        <div align="center">New user? Welcome&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
            </div>
        <asp:Button ID="Button1" runat="server" Text="Sign up..!" OnClick="signup_Click"/>
    </div>
    </form>
</body>
</html>
