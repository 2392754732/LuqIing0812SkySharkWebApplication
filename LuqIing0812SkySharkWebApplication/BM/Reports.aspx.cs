using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuqIing0812SkySharkWebApplication.BM
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String month, date, year;
            month = lstMonth.SelectedItem.Text.Trim();
            year = lstYear.SelectedItem.Text.Trim();
            date=month+ "/01/" + year;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
            conn.Open();

            string selectSql = "SELECT FltNo，SUNM(Fare) AS fare from dtDepartedFlights where (DateofJourney>@date) group by FltNo";

            SqlCommand cmd = new SqlCommand(selectSql, conn); 
            cmd.Parameters.AddWithValue("@date", date);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);

            DataSet dataset = new DataSet() ;
            adapter.Fill(dataset, "fare");
            conn.Close();
            DataView source = new DataView(dataset.Tables["fare"]);
            GridView1.DataSource = source;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabaseConnectionString"].ConnectionString);
            conn.Open();
            //create dataadapter
            string queryString = "SELECT FltNo, DateOfJourney， SuR(Fare) AS Revenue from dtDepartedFLights GROUP BY DateOfJounty,FltNo";
            //create commnad
            SqlCommand cmd = new SqlCommand(queryString,conn);
            SqlDataAdapter adapter = new SqlDataAdapter();

            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "Usges"); 
            conn.Close();
            DataView source = new DataView(dataset.Tables["Usges"]);
            //bind grid
            GridView1.DataSource = source; 
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARDatabaseConnectionString"].ConnectionString);
            conn.Open();
            //create dataadapter
            string queryString = "SELECT Top 100 Email,FareCollected,TotalTimesFlown from dtPassengerDetails order by TrotalTinesFlown";
            //create commnad
            SqlCommand cmd = new SqlCommand(queryString, conn);
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataSet dataset = new DataSet();
            adapter.Fill(dataset, "FreqFI");
            conn.Close();
            DataView source = new DataView(dataset.Tables["FreqFI"]);
            //bind grid
            GridView1.DataSource = source; 
            GridView1.DataBind();

        }
    }
}