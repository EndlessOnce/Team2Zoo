using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace zoodb
{
    public partial class SearchAnimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BSearch_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where name like @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", $"%{TxtSearch.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void CommonName_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where common_name like @common_name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@common_name", $"%{TextCommon.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void SpeciesName_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where species like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{TextSpecies.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BEx_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where exhibit_ID like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{DDLEx.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BHea_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where health like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{DDLHealth.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BDiet_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where diet like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{DDLDiet.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DDLHealth_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where health like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{DDLHealth.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DDLEx_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where exhibit_ID like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{DDLEx.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DDLDiet_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "select * from animal where diet like @species";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@species", $"%{DDLDiet.Text}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}