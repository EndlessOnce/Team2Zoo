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
    public partial class AddShow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void showAdd_Click(object sender, EventArgs e)
        {
            string dateTime = String.Format("{0}", Request.Form["showTime"]);
            string name = String.Format("{0}", Request.Form["show_name"]);
            string location = String.Format("{0}", Request.Form["show_loc"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string insertQuery = "insert into shows (Date_Time,Description,Location) values (@dtime,@des,@loc)";
            MySqlCommand comm = new MySqlCommand(insertQuery, link);
            comm.Parameters.AddWithValue("@dtime", dateTime);
            comm.Parameters.AddWithValue("@des", name);
            comm.Parameters.AddWithValue("@loc", location);

            comm.ExecuteNonQuery();
            Label.Visible = true;
            link.Close();
        }
    }
}