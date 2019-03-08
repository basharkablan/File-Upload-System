using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Login : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (DataAccess.UserAuthenitcation(txtusername.Text, txtpassword.Text))
        {
            Session["username"] = txtusername.Text;
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "Invalid Username and/or Password";
        }
    }
}