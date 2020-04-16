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
    public partial class updateEmployee : System.Web.UI.Page
    {   
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["empFname"] != null && !IsPostBack)    //Session["FirstName"] != null && !IsPostback
            {   //!IsPostBack


                emFnam.Text = Session["empFname"].ToString();
                emLnam.Text = Session["empLname"].ToString();
                emExdd.SelectedValue = Session["empExh"].ToString();
                jbUpdd.SelectedValue = Session["empJob"].ToString();
                //Session.Clear();

            }
            

        }
    
  
        protected void updateEmp_Click(object sender, EventArgs e)
        {
            string employeeFn = String.Format("{0}", Request.Form["emFnam"]);
            string employeeLn = String.Format("{0}", Request.Form["emLnam"]);
            string employeeEx = String.Format("{0}", Request.Form["emExdd"]);
            string employeeJ = String.Format("{0}", Request.Form["jbUpdd"]);


            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update employee SET L_Name=@empln , Exhibit_ID=@empEx, Job_ID=@empJ WHERE F_Name=@eFn";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@eFn", employeeFn);
            comm.Parameters.AddWithValue("@empLn", employeeLn);
            comm.Parameters.AddWithValue("@empEx", employeeEx);
            comm.Parameters.AddWithValue("@empJ", employeeJ);
            comm.ExecuteNonQuery();
            ueLabel.Visible = true;
            link.Close();

            
        }
    }
}