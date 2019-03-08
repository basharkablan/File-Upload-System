using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

public partial class Register : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string errorResult;
        Color color;

        if (txtpassword.Text != txtcpassword.Text)
        {
            color = Color.Red;
            errorResult = "The two passwords do not match";
        }
        else
        {
            errorResult = DataAccess.register(txtusrename.Text, txtpassword.Text, txtemail.Text);
            if (errorResult == "") // success
            {
                color = Color.Green;
                lblMessage.Text = "User Registered Successfully";
                txtusrename.Text = string.Empty;
                txtemail.Text = string.Empty;
            }
            else
            {
                lblMessage.Text = errorResult;
                color = Color.Red;
            }
        }
    }
}