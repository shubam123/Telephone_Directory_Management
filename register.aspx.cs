using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        SqlCommand cmd = new SqlCommand("INSERT INTO users(fname,lname,sex,dept,address,tel_number,mob_number,email,username,password) VALUES( @fname, @lname, @sex, @dept, @address, @tel_number, @mob_number, @email, @username, @password)", con);

        cmd.Parameters.AddWithValue("@fname", fnametextbox.Text);
        cmd.Parameters.AddWithValue("@lname", lnametextbox.Text);
        if (male.Checked)
        {
            cmd.Parameters.AddWithValue("@sex", male.Text);
        }
        else if (female.Checked)
        {
            cmd.Parameters.AddWithValue("@sex", female.Text);
        }
        cmd.Parameters.AddWithValue("@dept", department.Text);
        cmd.Parameters.AddWithValue("@address", address.Text);
        cmd.Parameters.AddWithValue("@tel_number", tel_number.Text);
        cmd.Parameters.AddWithValue("@mob_number", mob_number.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        con.Open();
        int x = cmd.ExecuteNonQuery();
        if (x>0)
        {
            Response.Write("Details saved successfully");
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Write("Error, Please try again.");
            Response.Redirect("register.aspx");
        }
        con.Close();

    }
}