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
    public partial class updateShop : System.Web.UI.Page
    {
        protected void shopUp_Click(object sender, EventArgs e)
        {
            string name = String.Format("{0}", Request.Form["shopName"]);
            string type = String.Format("{0}", Request.Form["shop"]);
            string status = String.Format("{0}", Request.Form["ss"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update shop SET Shop_Type=@type, Shop_Status=@stat WHERE Shop_Name=@name";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@type", type);
            comm.Parameters.AddWithValue("@stat", status);

            comm.ExecuteNonQuery();
            ssLab.Visible = true;
            link.Close();
        }
    }
}