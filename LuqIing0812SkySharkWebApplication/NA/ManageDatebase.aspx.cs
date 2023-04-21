using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace LuqIing0812SkySharkWebApplication.NA
{
    public partial class ManageDatebase : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                lblMessage.Text = "";
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("UpdateReservations", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@date", DateTime.Today.Date.ToShortDateString());
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage.Text = "Update Reservations Done!!!";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                lblMessage.Text = "";
                String ConnectionString = ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("FrequentFiler", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@date", DateTime.Today.Date.ToShortDateString());
                cmd.ExecuteNonQuery();
                conn.Close();
                lblMessage.Text = "Update FrequentFiler Done!!!";
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;

            }
        }
    }
}