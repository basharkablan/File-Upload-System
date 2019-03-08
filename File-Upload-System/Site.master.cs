using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.Visible = false;
        HyperLink2.Visible = false;
        LinkButton1.Visible = false;
        if (Session["username"] != null)
        {
            LinkButton1.Visible = true;
        }
        else
        {
            HyperLink1.Visible = true;
            HyperLink2.Visible = true;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        Response.Redirect("Login.aspx");
    }
}
