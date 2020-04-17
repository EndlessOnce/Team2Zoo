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
    public partial class delEmp : System.Web.UI.Page
    {
        protected void delEmp_Click(object sender, EventArgs e)
        {
            string id = String.Format("{0}", Request.Form["empID"]);
            string fname = String.Format("{0}", Request.Form["fname"]);
            string lname = String.Format("{0}", Request.Form["lname"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string delQuery = "DELETE from employee WHERE F_Name=@fname and L_Name=@lname and Employee_ID=@id";
            MySqlCommand comm = new MySqlCommand(delQuery, link);
            comm.Parameters.AddWithValue("@fname", fname);
            comm.Parameters.AddWithValue("@lname", lname);
            comm.Parameters.AddWithValue("@id", id);

            comm.ExecuteNonQuery();
            Label1.Visible = true;
            link.Close();
        }
    }
}