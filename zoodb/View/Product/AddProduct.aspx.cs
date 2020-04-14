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
    public partial class AddProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addPro_Click(object sender, EventArgs e)
        {
            string name = String.Format("{0}", Request.Form["pro_name"]);
            string price = String.Format("{0}", Request.Form["pro_price"]);
            string quan = String.Format("{0}", Request.Form["pro_quan"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string insertQuery = "insert into product (Name,Price,Available_Qty) values (@name,@price,@quan)";
            MySqlCommand comm = new MySqlCommand(insertQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@price", price);
            comm.Parameters.AddWithValue("@quan", quan);

            comm.ExecuteNonQuery();
            Label1.Visible = true;
            link.Close();


        }
    }
}