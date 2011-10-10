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
       // comm.CommandText = "select * from quezada_Uploads";
        comm.CommandText = "select [file] from quezada_Uploads where user_id = @user_id ";
        comm.Parameters.AddWithValue("user_id", System.Web.HttpContext.Current.User.Identity.Name);

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
    protected void lnkBtnUpload_Click(object sender, EventArgs e)
    {
        
    }
}