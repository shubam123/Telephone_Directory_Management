<%@ Page Language="C#" AutoEventWireup="true" CodeFile="settings.aspx.cs" Inherits="settings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="position:absolute;">TELEPONE DIRECTORY MANAGEMENT
        </div>
        <div style="width:auto;float:right;padding:0px 10px; height: 19px;">
        <div id="menu_heading">
            <asp:Label ID="welcome_label" runat="server" Text="Welcome "></asp:Label>
        </div>
            <ul id="menu" style="display:block;list-style:none;padding:0px;margin:0px;">
                <li>
                    <asp:Button ID="settingsbtn" runat="server" Text="Acc. Settings" Width="150px" OnClick="settingsbtn_Click" />
                </li>
                <% if(Session["admin-type"].ToString() == "admin".ToString())
                    { %>
                        <li>
                            <asp:Button ID="local_admin" runat="server" Text="Dept. Admin " Width="150px" OnClick="locadminbtn_Click" />
                        </li>
                   <% } 
                    else if(Session["admin-type"].ToString() == "global_admin".ToString())
                       { %>
                       <li>
                            <asp:Button ID="global_admin" runat="server" Text="Global Admin" Width="150px" OnClick="gloadminbtn_Click" />
                        </li>
                      <% }
                       %>
                <li>
                    <asp:Button ID="logoutbtn" runat="server" Text="Logout" Width="150px" OnClick="logoutbtn_Click" />
                </li>
            </ul>
        </div>
        <div align="center">
            Change your Password:<br />
            <br />
            <asp:Label ID="uname" runat="server"></asp:Label>
            <br />
            <br />
            Enter new Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="new_pass" runat="server"></asp:TextBox>
            <br />
            <br />
            Confirm new Password:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="conf_pass" runat="server"></asp:TextBox>
&nbsp;
            <br />
            <br />
            <asp:Button ID="update" runat="server" Text="Update" OnClick="update_Click" />
            <br />
        </div>
    </div>
    </form>
</body>
</html>
