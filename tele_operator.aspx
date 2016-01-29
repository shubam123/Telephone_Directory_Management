<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tele_operator.aspx.cs" Inherits="tele_operator" %>

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
                <% if (Session["admin-type"].ToString() == "admin".ToString())
                         { %>
                        <li>
                            <asp:Button ID="local_admin" runat="server" Text="Dept. Admin " Width="150px" OnClick="locadminbtn_Click" />
                        </li>
                        
                   <% }
                         else if (Session["admin-type"].ToString() == "global_admin".ToString())
                         { %>
                       <li>
                            <asp:Button ID="global_admin" runat="server" Text="Global Admin" Width="150px" OnClick="gloadminbtn_Click" />
                        </li>
                      <% }
                          else { }
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
        
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div align="center">
            <h2>Add user</h2>
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
        <asp:Button ID="add" runat="server" Text="Add" OnClick="add_Click" />
    </form>
</body>
</html>
