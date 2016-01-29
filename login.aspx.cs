using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE username = '" + username.Text + "' and password = '" + password.Text + "' ");
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = cmd;
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count == 1)
        {
            Session["new"] = "yes";
            Session["id"] = dt.Rows[0]["id"].ToString();
            Session["fname"] = dt.Rows[0]["fname"].ToString();
            Session["lname"] = dt.Rows[0]["lname"].ToString();
            Session["sex"] = dt.Rows[0]["sex"].ToString();
            Session["dept"] = dt.Rows[0]["dept"].ToString();
            Session["admin-type"] = dt.Rows[0]["admin-type"].ToString();
            Session["username"] = dt.Rows[0]["username"].ToString();
            Response.Write("Login Successful");
            Response.Redirect("home.aspx");
        }
        else
        {
            Response.Write("Login failed");
            Response.Redirect("register.aspx");
        }

        con.Close();
    }

    protected void signup_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}