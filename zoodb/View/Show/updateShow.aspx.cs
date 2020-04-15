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
    public partial class updateShow : System.Web.UI.Page
    {
        protected void updateShow_Click(object sender, EventArgs e)
        {
            string name = String.Format("{0}", Request.Form["show_name"]);
            string dt = String.Format("{0}", Request.Form["showTime"]);
            string loc = String.Format("{0}", Request.Form["show_loc"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update shows SET Date_Time=@dt, Location=@loc WHERE Description=@name";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            comm.Parameters.AddWithValue("@dt", dt);
            comm.Parameters.AddWithValue("@loc", loc);

            comm.ExecuteNonQuery();
          //  ssLabel.Visible = true;
            link.Close();

        }
       
    }
}
