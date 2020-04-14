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
    public partial class AddVisitor : System.Web.UI.Page
    { 
        protected void addVis_Click(object sender, EventArgs e)
        {
            string fname = String.Format("{0}", Request.Form["fname"]);
            string lname = String.Format("{0}", Request.Form["lname"]);
            string ticket= String.Format("{0}", Request.Form["ttype"]);
            string member= String.Format("{0}", Request.Form["aMem"]);
            string group=  String.Format("{0}", Request.Form["gID"]);
            string date=   String.Format("{0}", Request.Form["showTime"]);
            string phone=  String.Format("{0}", Request.Form["phoneID"]);

            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string insertQuery = "insert into visitor (F_Name,L_Name,Ticket_Type,Is_Member,Group_ID,Date_Time,Phone_Number) values (@fname,@lname,@ttype,@mem,@gID,@dt,@pNum)";
            MySqlCommand comm = new MySqlCommand(insertQuery, link);
            comm.Parameters.AddWithValue("@fname", fname);
            comm.Parameters.AddWithValue("@lname", lname);
            comm.Parameters.AddWithValue("@ttype", ticket);
            comm.Parameters.AddWithValue("@mem", member);
            comm.Parameters.AddWithValue("@gID", group);
            comm.Parameters.AddWithValue("@dt", date);
            comm.Parameters.AddWithValue("@pNum", phone);

            comm.ExecuteNonQuery();
            LabelVis.Visible = true;
            link.Close();

        }
    }
}