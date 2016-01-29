using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
           /* if (Session["hv"].ToString() == "yes")
            {
                welcome_label.Text += Session["new"].ToString();
                Session["hv"] = null;
            }*/
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
