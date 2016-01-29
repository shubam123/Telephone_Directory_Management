using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class home : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["new"] != null)
        {
         /*   if (Session["hv"] == null)
            {
                welcome_label.Text += Session["admin-type"].ToString();
                Session["hv"] = "yes";
            } */
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }

    protected void settingsbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("settings.aspx");
    }
    protected void locadminbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx");
    }

    protected void gloadminbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin-global.aspx");
    }
    protected void operatorbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("tele_operator.aspx");
    }

    protected void logoutbtn_Click(object sender, EventArgs e)
    {
        Session["new"] = null;
        Session["hv"] = null;
        Session["new"] = null;
        Session["id"] = null;
        Session["fname"] = null;
        Session["lname"] = null;
        Session["sex"] = null;
        Session["dept"] = null;
        Session["admin-type"] = null;
        Session.Clear();
        Session.Remove("admin-type");
        Response.Redirect("login.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        //String str = "select id as 'User id',fname as 'First name',lname as 'Last name' ,sex as 'Sex',dept as 'Department' ,address as 'Address', tel_number as 'Telephone number',mob_number as 'Mobile number',email as 'Email id' from users where (id like '%' + @search_key + '%')";
        SqlCommand cmd = new SqlCommand("select id as 'User id',fname as 'First name',lname as 'Last name' ,sex as 'Sex',dept as 'Department' ,address as 'Address', tel_number as 'Telephone number',mob_number as 'Mobile number',email as 'Email id' from users where ("+search_field.SelectedValue.ToString()+" like '%"+search_key.Text+"%')");
        //SqlCommand cmd = new SqlCommand("select id as 'User id',fname as 'First name',lname as 'Last name' ,sex as 'Sex',dept as 'Department' ,address as 'Address', tel_number as 'Telephone number',mob_number as 'Mobile number',email as 'Email id' from users where ('fname' like '%a%')");
        cmd.Connection = con;
        //cmd.Parameters.AddWithValue("@search_f", search_field.SelectedValue);
        //cmd.Parameters.AddWithValue("@a",search_field.SelectedValue.ToString());
        //cmd.Parameters.AddWithValue("@b", search_key.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
}