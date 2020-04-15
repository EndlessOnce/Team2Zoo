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
            if (!IsPostBack)
            {

                emFnam.Text = Session["empFname"].ToString();
                emLnam.Text = Session["empLname"].ToString();
                emExdd.SelectedValue = Session["empExh"].ToString();
                jbUpdd.SelectedValue = Session["empJob"].ToString();
                
                //string passedAnNm = 

                //  amName.Text = passedAnNm;
            }
        }

        protected void updateEmp_Click(object sender, EventArgs e)
        {
            string employeeFn = String.Format("{0}", Request.Form["emFname"]);
            string employeeLn = String.Format("{0}", Request.Form["emLnam"]);
            string employeeEx = String.Format("{0}", Request.Form["emExdd"]);
            string employeeJ = String.Format("{0}", Request.Form["jbUpdd"]);


            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update employee SET F_name=@fname , L_name=@lname , Exhibit_ID=@exID, Job_ID=@jobID WHERE Name=@name";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@fname", employeeFn);
            comm.Parameters.AddWithValue("@lname", employeeLn);
            comm.Parameters.AddWithValue("@exID", employeeEx);
            comm.Parameters.AddWithValue("@jobID", employeeJ);



            comm.ExecuteNonQuery();
            //   labelAnimUp.Visible = true;
            link.Close();

            
        }
    }
}