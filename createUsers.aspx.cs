using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class createUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        
          Response.Redirect("logon.aspx");
        
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (txtPassword.Text == txtReEnter.Text)
        {
            System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
            //authenticate pulling a connection string from webconfig
            var conString = System.Configuration.ConfigurationManager.ConnectionStrings["websitedb"];
            conn.ConnectionString = conString.ConnectionString;

           
            conn.Open();
            //System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT into quezada_logon_tbl (firstname,lastname,user_id, user_Password, email) values (@firstname, @lastname,@userid, @password, @email)";
            //System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            System.Data.SqlClient.SqlParameter[] param = new System.Data.SqlClient.SqlParameter[5];
            param[0] = new System.Data.SqlClient.SqlParameter("@firstname", txtFirstName.Text);
            param[1] = new System.Data.SqlClient.SqlParameter("@lastname", txtLastName.Text);
            param[2] = new System.Data.SqlClient.SqlParameter("@userid", txtUsername.Text);
            param[3] = new System.Data.SqlClient.SqlParameter("@password", txtPassword.Text);
            param[4] = new System.Data.SqlClient.SqlParameter("@email", txtEmail.Text);

            for (int i = 0; i < param.Length; i++)
            {

                cmd.Parameters.Add(param[i]);


            }
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();            
            conn.Close();
            Response.Redirect("Confirmation.aspx");
        }

       /* else
        {
            lblError2.Text = "Password did not match";
            txtSignupPassword.Focus();

        }*/

    }
}