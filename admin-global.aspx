<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin-global.aspx.cs" Inherits="admin_global" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="position:absolute;">TELEPONE DIRECTORY MANAGEMENT<br />Global Admin page
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
        <br />
        <br />
        <div align="center">
            <p>Various departments are:-</p>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="departments" HeaderText="departments" SortExpression="departments" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:TDMConnectionString %>" DeleteCommand="DELETE FROM [depts] WHERE [Id] = @original_Id AND [departments] = @original_departments" InsertCommand="INSERT INTO [depts] ([departments]) VALUES (@departments)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [depts]" UpdateCommand="UPDATE [depts] SET [departments] = @departments WHERE [Id] = @original_Id AND [departments] = @original_departments">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_departments" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="departments" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="departments" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                    <asp:Parameter Name="original_departments" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:TextBox ID="new_dept" runat="server" placeholder="Add new dapartment"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="add_dept" runat="server" Text="Add" OnClick="add_dept_Click" />
            <br />
        </div>
    </div>

    </form>
</body>
</html>
