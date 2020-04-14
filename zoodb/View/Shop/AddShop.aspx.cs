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
    public partial class AddShop : System.Web.UI.Page
    {
        protected void addShop_Click(object sender, EventArgs e)
        {
            string name = String.Format("{0}", Request.Form["shopName"]);
            string type = String.Format("{0}", Request.Form["shopT"]);
            string stat = String.Format("{0}", Request.Form["ss"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string insertQuery = "insert into shop (Shop_Name,Shop_Type,Shop_Status) values (@name,@type,@stat)";
            MySqlCommand comm = new MySqlCommand(insertQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@type", type);
            comm.Parameters.AddWithValue("@stat", stat);

            comm.ExecuteNonQuery();
            LabelShop.Visible = true;
            link.Close();

        }
    }
}