using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuqIing0812SkySharkWebApplication
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                string updateSql = "UPDATE dtUsers SET Password = Password, PasswordChanged = '1' WHERE (Usernane =@original_username )";
                SqlCommand cmd = new SqlCommand(updateSql, conn);
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@original_usernane", Session["usrName"]);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("~/NA/ManageUsers.aspx");
            }
            catch (Exception ex)
            {
                Label2.Text = ex.Message;

            }
        }
    }
}