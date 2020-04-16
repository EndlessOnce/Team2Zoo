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
    public partial class delMember : System.Web.UI.Page
    {
        protected void delMem_Click(object sender, EventArgs e)
        {
            string id = String.Format("{0}", Request.Form["memID"]);
            string fname = String.Format("{0}", Request.Form["fname"]);
            string lname = String.Format("{0}", Request.Form["lname"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string delQuery = "DELETE from member WHERE F_Name=@fname and L_Name=@lname and Membership_ID=@id";
            MySqlCommand comm = new MySqlCommand(delQuery, link);
            comm.Parameters.AddWithValue("@fname", fname);
            comm.Parameters.AddWithValue("@lname", lname);
            comm.Parameters.AddWithValue("@id", id);

            comm.ExecuteNonQuery();
            labelAnimUp.Visible = true;
            link.Close();
        }
    }
}