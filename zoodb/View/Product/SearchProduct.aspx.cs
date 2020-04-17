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
    public partial class SearchProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void NameButton_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string name = String.Format("{0}", Request.Form["pros_name"]);

            string searchQuery = "select * from product where name like @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", $"%{name}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void PriceButton_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string price = String.Format("{0}", Request.Form["pros_price"]);

            string searchQuery = "select * from product where price like @price";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@price", $"%{price}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DDLPro_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string name = String.Format("{0}", Request.Form["DDLPro"]);

            string searchQuery = "select * from product where name like @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", $"%{name}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}