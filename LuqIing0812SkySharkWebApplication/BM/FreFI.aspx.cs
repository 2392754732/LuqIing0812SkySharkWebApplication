﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuqIing0812SkySharkWebApplication.BM
{
    public partial class FreFI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabase ConnectionString"].ConnectionString);
                conn.Open();
                string insertSql = "INSERT INTO dtFrequentFliers Select EMail, Discount=@Discount from dtPassengerDetails where TotalTimeFlown>=l@TotalTimesFlown";



                SqlCommand cmd = new SqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@Discount", listDisc1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@TotalTimesFlown", listTimeFollown.SelectedItem.ToString());
                int a = cmd.ExecuteNonQuery();

                conn.Close();
                lblMessage.Text = "Record Added.";

                conn.Open();
                String selectSql = "select * from dtFrequentFliers";
                SqlDataAdapter adapter = new SqlDataAdapter();

                SqlCommand cmd2 = new SqlCommand(selectSql, conn);

                DataSet dataset = new DataSet();

                adapter.Fill(dataset, "FrequentFilers");
                conn.Close();
                DataView source = new DataView(dataset.Tables["FrequentFliers"]);
                GridView1.DataSource = source;
                GridView1.DataBind();



            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "";
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ARPDatabase ConnectionString"].ConnectionString);
                conn.Open();
                string insertSql = "INSERT INTO dtFrequentFliers Select EMail,Discount=@Discount from dtPassengerDetails whereFareCollected>=@FareCollected";



                SqlCommand cmd = new SqlCommand(insertSql, conn);
                cmd.Parameters.AddWithValue("@Discount", listDisc2.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@FareCollected", txtFare.Text.Trim());
                int a = cmd.ExecuteNonQuery();

                conn.Close();
                lblMessage.Text = "Record Added.";

                conn.Open();
                String selectSql = "select * from dtFrequentFliers";
                SqlDataAdapter adapter = new SqlDataAdapter();

                SqlCommand cmd2 = new SqlCommand(selectSql, conn);

                DataSet dataset = new DataSet();

                adapter.Fill(dataset, "FrequentFilers");
                conn.Close();
                DataView source = new DataView(dataset.Tables["FrequentFliers"]);
                GridView1.DataSource = source;
                GridView1.DataBind();



            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;

            }
        }
    
    }
}