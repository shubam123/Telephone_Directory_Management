<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

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

                <% if (Session["admin-type"].ToString() == "admin".ToString() || Session["admin-type"].ToString() == "tele_operator".ToString() || Session["admin-type"].ToString() == "global_admin".ToString())
                    { %>
                        <li>
                            <asp:Button ID="operator" runat="server" Text="Add user " Width="150px" OnClick="operatorbtn_Click" />
                        </li>
                     <%} %>
                <li>
                    <asp:Button ID="logoutbtn" runat="server" Text="Logout" Width="150px" OnClick="logoutbtn_Click" />
                </li>
            </ul>
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search by:-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search key:-<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="search_field" runat="server">
            <asp:ListItem Text="First Name" Value="fname"></asp:ListItem>
            <asp:ListItem Text="Last Name" Value="lname"></asp:ListItem>
            <asp:ListItem Text="Sex" Value="sex"></asp:ListItem>
            <asp:ListItem Text="Department" Value="dept"></asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="search_key" runat="server" Width="128px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
        <br />
        <br />
        <br />
        <br />
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" Width="766px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
            </div>
        <br />
        <br />
    </form>
</body>
</html>
