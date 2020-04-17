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
    public partial class SearchTransaction : System.Web.UI.Page
    {
        protected void BTDate_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string time = String.Format("{0}", Request.Form["showTime"]);

            string searchQuery = "Select transactions.transaction_ID, transactions.visitor_ID, product.Product_ID, product.name,shop.Shop_Name, products_of_transaction.quantity, transactions.Date_Time From(((transactions INNER JOIN products_of_transaction ON transactions.transaction_ID = products_of_transaction.transaction_ID) INNER JOIN product ON products_of_transaction.product_ID = product.product_ID) INNER JOIN shop ON transactions.shop_ID = shop.shop_ID) WHERE transactions.date_time = @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", time);
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BSID_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "Select transactions.transaction_ID, transactions.visitor_ID, product.Product_ID, product.name,shop.Shop_Name, products_of_transaction.quantity, transactions.Date_Time From(((transactions INNER JOIN products_of_transaction ON transactions.transaction_ID = products_of_transaction.transaction_ID) INNER JOIN product ON products_of_transaction.product_ID = product.product_ID) INNER JOIN shop ON transactions.shop_ID = shop.shop_ID) WHERE shop.shop_name = @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", DDLShopN.SelectedValue);
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BPID_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string ProID = String.Format("{0}", Request.Form["ProID"]);
            string searchQuery = "Select transactions.transaction_ID, transactions.visitor_ID, product.Product_ID, product.name,shop.Shop_Name, products_of_transaction.quantity, transactions.Date_Time From(((transactions INNER JOIN products_of_transaction ON transactions.transaction_ID = products_of_transaction.transaction_ID) INNER JOIN product ON products_of_transaction.product_ID = product.product_ID) INNER JOIN shop ON transactions.shop_ID = shop.shop_ID) WHERE product.product_ID = @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", ProID);
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BVID_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string VisitID = String.Format("{0}", Request.Form["TBVis"]);
            string searchQuery = "Select transactions.transaction_ID, transactions.visitor_ID, product.Product_ID, product.name,shop.Shop_Name, products_of_transaction.quantity, transactions.Date_Time From(((transactions INNER JOIN products_of_transaction ON transactions.transaction_ID = products_of_transaction.transaction_ID) INNER JOIN product ON products_of_transaction.product_ID = product.product_ID) INNER JOIN shop ON transactions.shop_ID = shop.shop_ID) WHERE transactions.visitor_ID = @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", VisitID);
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BAll_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string searchQuery = "Select transactions.transaction_ID, transactions.visitor_ID, product.Product_ID, product.name,shop.Shop_Name, products_of_transaction.quantity, transactions.Date_Time From(((transactions INNER JOIN products_of_transaction ON transactions.transaction_ID = products_of_transaction.transaction_ID) INNER JOIN product ON products_of_transaction.product_ID = product.product_ID) INNER JOIN shop ON transactions.shop_ID = shop.shop_ID)";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}