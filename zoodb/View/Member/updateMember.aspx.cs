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
    public partial class updateMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void upMem_Click(object sender, EventArgs e)
        {
            string jd = String.Format("{0}", Request.Form["showTime"]);
            string fname = String.Format("{0}", Request.Form["fname"]);
            string lname = String.Format("{0}", Request.Form["lname"]);
            string pnum = String.Format("{0}", Request.Form["pNum"]);
            string addy = String.Format("{0}", Request.Form["addy"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "UPDATE member SET Join_Date=@jd, Phone_number=@pnum, Address=@addy WHERE F_Name=@fname AND L_Name=@lname";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@jd", jd);
            comm.Parameters.AddWithValue("@fname", fname);
            comm.Parameters.AddWithValue("@lname", lname);
            comm.Parameters.AddWithValue("@pnum", pnum);
            comm.Parameters.AddWithValue("@addy", addy);

            comm.ExecuteNonQuery();
            //ssLabel.Visible = true;
            link.Close();
        }
    }
}