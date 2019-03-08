using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        if (!IsPostBack)
        {
            GetData();
        }
    }

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string errorResult;
        if (!FileUpload1.HasFile)
        {
            errorResult = "Please select a file to Upload";
        }
        else
        {
            errorResult = DataAccess.Upload(Session["username"].ToString(), FileUpload1.PostedFile);
        }

        if (errorResult == "")
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = errorResult;
        }
    }

    private void GetData()
    {
        DataAccess.ListFilesByUser(Session["username"] + "", delegate (SqlDataReader data) {
            GridView1.DataSource = data;
            GridView1.DataBind();
        });
    }

    protected void btnDownload_Click(object sender, EventArgs e)
    {
        int id = int.Parse((sender as Button).CommandArgument);
        DataAccess.File file = DataAccess.GetFileById(id);
        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = file.contentType;
        Response.AppendHeader("Content-Disposition", "attachment; fileName=" + file.fileName);
        Response.BinaryWrite(file.content);
        Response.Flush();
        Response.End();
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        int id = int.Parse((sender as Button).CommandArgument);
        string errorResult = DataAccess.RemoveFile(id);

        if (errorResult == "")
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = errorResult;
        }
    }
}