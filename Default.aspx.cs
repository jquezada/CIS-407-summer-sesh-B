using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        //authenticate pulling a connection string from webconfig
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["websitedb"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();
        //check to see if its open
        //Response.Write(conn.State);
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "select * from quezada_Uploads";
        //Create an adaptor
        System.Data.SqlClient.SqlDataAdapter DA = new System.Data.SqlClient.SqlDataAdapter();
        //create a data set
        System.Data.DataSet DS = new System.Data.DataSet();

        DA.SelectCommand = comm;
        DA.Fill(DS);
        rptUploads.DataSource = DS;
        rptUploads.DataBind();
        conn.Close();
        conn.Dispose();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }
}