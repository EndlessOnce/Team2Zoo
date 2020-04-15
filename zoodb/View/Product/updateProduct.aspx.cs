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
    public partial class updateProduct : System.Web.UI.Page
    {
        protected void upPro_Click(object sender, EventArgs e)
        {
            string name = String.Format("{0}", Request.Form["pro_name"]);
            string price = String.Format("{0}", Request.Form["pro_price"]);
            string qty = String.Format("{0}", Request.Form["pro_quan"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update product SET Price=@price, Available_Qty=@qty WHERE Name=@name";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@price",price);
            comm.Parameters.AddWithValue("@qty", qty);

            comm.ExecuteNonQuery();
            //Label1.Visible = true;
            link.Close();
        }
    }
}