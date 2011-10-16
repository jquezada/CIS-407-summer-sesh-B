using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        //Used to allow users to upload onto site
        string theFile = /*System.Web.HttpContext.Current.User.Identity.Name+*/  fileUpload.PostedFile.FileName;   
       //Used to test and make sure it displays the filename
        //Response.Write(theFile);      

        string filepath = MapPath("uploadedfiles/") + theFile; 
        //Used to display the path
        //Response.Write(filepath);    

        try
          {
            //this will save the filepath
              fileUpload.PostedFile.SaveAs(filepath); 
          }    
        catch (Exception)        
          {   
           throw new Exception("File was not saved!");
          }   
        
       string connectionstring = "Data Source=devrystudentsp10.db.6077598.hostedresource.com;Persist Security Info=True;User ID=DeVryStudentSP10;Password=OidLZqBv4";  
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(); 
        conn.ConnectionString = connectionstring; 
        conn.Open();          
        //MessageBox.Show(conn.State.ToString());  
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand();
        comm.Connection = conn;

        comm.CommandText = "INSERT into quezada_Uploads ([file], user_id) values(@file,@user_id)";
        //System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
        
       // comm.CommandText += " @file where user_id = @user_id"; 
        comm.Parameters.AddWithValue("@file", theFile); 
        comm.Parameters.AddWithValue("@user_id", System.Web.HttpContext.Current.User.Identity.Name);
        comm.ExecuteNonQuery();
        conn.Close();
        conn.Dispose();
        Response.Redirect("Default.aspx");
        /*comm.CommandText = "UPDATE quezada_Uploads set [file] = ";
        comm.CommandText += " @file where user_id = @user_id";
        comm.Parameters.AddWithValue("@file", theFile); 
        comm.Parameters.AddWithValue("@user_id", System.Web.HttpContext.Current.User.Identity.Name);
        comm.ExecuteNonQuery(); 
        conn.Close();   
        conn.Dispose();*/
        
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}