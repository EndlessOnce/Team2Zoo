using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace zoodb
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BAddMember_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
                link.Open();

                string fName = String.Format("{0}", Request.Form["fName"]);
                string lName = String.Format("{0}", Request.Form["lName"]);
                string pNum = String.Format("{0}", Request.Form["pNum"]);
                string add = String.Format("{0}", Request.Form["addy"]);
                string JDate = String.Format("{0}", Request.Form["JDate"]);
                string EDate = String.Format("{0}", Request.Form["ExDate"]);

                string addMem = "insert into member (F_Name,L_Name,Phone_Number,Join_Date,Expiration_Date,Address) values(@FName, @LName, @PNum, @JDate, @EDate, @Add)";
                MySqlCommand com = new MySqlCommand(addMem, link);
                com.Parameters.AddWithValue("Fname", fName);
                com.Parameters.AddWithValue("Lname", lName);
                com.Parameters.AddWithValue("PNum", pNum);
                com.Parameters.AddWithValue("JDate", JDate);
                com.Parameters.AddWithValue("EDate", EDate);
                com.Parameters.AddWithValue("Add", add);

                com.ExecuteNonQuery();
                LSubmit.Visible = true;
                link.Close();
            }

            catch(Exception er)
            {
                Response.Write("Error:" + er);
            }
        }
    }
}