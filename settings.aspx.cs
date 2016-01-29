using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class settings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        uname.Text = Session["username"].ToString();
    }

    protected void update_Click(object sender, EventArgs e)
    {
        if(new_pass.Text == conf_pass.Text)
        {
            string sampid = Session["id"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("UPDATE users SET password = @password where id = @id", con);
            cmd.Parameters.AddWithValue("@password", new_pass.Text);
            cmd.Parameters.AddWithValue("@id", sampid);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("home.aspx");
        }
        else
        {
            Response.Write("Password doesn't match!");
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
}