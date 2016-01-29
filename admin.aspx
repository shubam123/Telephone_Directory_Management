<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div style="position:absolute;">TELEPONE DIRECTORY MANAGEMENT<br />Departmental admin
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
        <br /><br /><br /><br /><br /><br /><br />


        <div align="center">

            <br />

            <br />
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="Employee Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="fname" HeaderText="First name" SortExpression="fname" />
                    <asp:BoundField DataField="lname" HeaderText="Last name" SortExpression="lname" />
                    <asp:BoundField DataField="sex" HeaderText="Gender" SortExpression="sex" />
                    <asp:BoundField DataField="dept" HeaderText="Department" SortExpression="dept" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="tel_number" HeaderText="Telephone number" SortExpression="tel_number" />
                    <asp:BoundField DataField="mob_number" HeaderText="Mobile number" SortExpression="mob_number" />
                    <asp:BoundField DataField="email" HeaderText="Email id" SortExpression="email" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TDMConnectionString %>" DeleteCommand="DELETE FROM [users] WHERE [id] = @id" InsertCommand="INSERT INTO [users] ([fname], [lname], [sex], [dept], [admin-type], [address], [tel_number], [mob_number], [email]) VALUES (@fname, @lname, @sex, @dept, @column1, @address, @tel_number, @mob_number, @email)" SelectCommand="SELECT [id], [fname], [lname], [sex], [dept], [admin-type] AS column1, [address], [tel_number], [mob_number], [email] FROM [users]" UpdateCommand="UPDATE [users] SET [fname] = @fname, [lname] = @lname, [sex] = @sex, [dept] = @dept, [admin-type] = @column1, [address] = @address, [tel_number] = @tel_number, [mob_number] = @mob_number, [email] = @email WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="dept" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="tel_number" Type="Int32" />
                    <asp:Parameter Name="mob_number" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="lname" Type="String" />
                    <asp:Parameter Name="sex" Type="String" />
                    <asp:Parameter Name="dept" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="tel_number" Type="Int32" />
                    <asp:Parameter Name="mob_number" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </div>
    </form>
</body>
</html>
