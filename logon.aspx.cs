using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class logon : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogon_Click(object sender, EventArgs e)
    {
        // Old way to get authenticaiton
        /* if (System.Web.Security.FormsAuthentication.Authenticate(txtUserName.Text, txtPassword.Text))
         {
             System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false); 
             //Response.Redirect("Default.aspx");
         }*/
        //create a new sqlconnection
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        //authenticate pulling a connection string from webconfig
        var conString = System.Configuration.ConfigurationManager.ConnectionStrings["websitedb"];
        conn.ConnectionString = conString.ConnectionString;

        conn.Open();
        //check to see if its open
        //Response.Write(conn.State);
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;
        comm.CommandText = "select firstname from quezada_logon_tbl where user_id = @userid and [user_password] = @pass";

        //apply parameters
        comm.Parameters.AddWithValue("@userid", txtUserName.Text);
        comm.Parameters.AddWithValue("@pass", txtPassword.Text);

        //include a datareader doesnt need a new
        System.Data.SqlClient.SqlDataReader DR;
        DR = comm.ExecuteReader();

        if (DR.HasRows)
        {
            //good
            System.Web.Security.FormsAuthentication.SetAuthCookie(txtUserName.Text, false);
            Response.Redirect("Default.aspx");
            lblError.Visible = false;
        }
        else
        { 
            //bad
            lblError.Text = "Either your username or pasword was incorrect!";
            lblError.Visible = true;
        }

        conn.Close();
        conn.Dispose();
    }
    protected void btnCreateAccount_Click(object sender, EventArgs e)
    {
        Response.Redirect("createUsers.aspx");
    }
}