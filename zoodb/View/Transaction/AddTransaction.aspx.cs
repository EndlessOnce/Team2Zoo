using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace zoodb
{
    public partial class AddTransaction : System.Web.UI.Page
    {
        protected void addTrans_Click(object sender, EventArgs e)
        {
            string date = String.Format("{0}", Request.Form["showTime"]);
            string shop = String.Format("{0}", Request.Form["shopID"]);
            string product = String.Format("{0}", Request.Form["pID"]);
            string qty = String.Format("{0}", Request.Form["quan"]);
            string vis = String.Format("{0}", Request.Form["visID"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string insertQuery = "insert into transactions (Visitor_ID,Date_Time,Shop_ID) values (@vis,@dt,@shop)";
            MySqlCommand comm = new MySqlCommand(insertQuery, link);
            comm.Parameters.AddWithValue("@vis", vis);
            comm.Parameters.AddWithValue("@dt", date);
            comm.Parameters.AddWithValue("@shop", shop);
            comm.ExecuteNonQuery();
/*
            string insertTwo = "insert into products_of_transaction(Product_ID,Quantity) values (@pro,@quan)";
            MySqlCommand cmd = new MySqlCommand(insertTwo, link);
            cmd.Parameters.AddWithValue("@pro", product);
            cmd.Parameters.AddWithValue("@quan", qty);
            cmd.ExecuteNonQuery();

 */      
            LabelT.Visible = true;
            link.Close();
        
        }
    }
}