using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace zoodb
{
    public partial class delProduct : System.Web.UI.Page
    {
        protected void delPro_Click(object sender, EventArgs e)
        {
            string id = String.Format("{0}", Request.Form["proID"]);
            string name = String.Format("{0}", Request.Form["proName"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string delQuery = "DELETE from product WHERE Name=@name and Product_ID=@id";
            MySqlCommand comm = new MySqlCommand(delQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@id", id);

            comm.ExecuteNonQuery();
            labelPro.Visible = true;
            link.Close();

        }
    }
}