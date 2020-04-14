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
    public partial class AddEmployee : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddEmpButton_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
                link.Open();

                string addEmp = "insert into employee (F_Name,L_Name,Job_ID,Exhibit_ID,Show_ID,Shop_ID) values(@FName, @LName, @JobID, @ExID, @ShowID,@ShopID)";
                MySqlCommand com = new MySqlCommand(addEmp, link);
                com.Parameters.AddWithValue("Fname", TBFName.Text);
                com.Parameters.AddWithValue("Lname", TBLName.Text);
                com.Parameters.AddWithValue("JobID", DDLJob.SelectedValue);

                if(DDLExID.Text == "NULL")
                {
                    com.Parameters.AddWithValue("ExID", DBNull.Value);

                }
                else
                {
                    com.Parameters.AddWithValue("ExID", DDLExID.SelectedValue);
                }

                if(DDLShowID.Text == "NULL")
                {
                    com.Parameters.AddWithValue("ShowID", DBNull.Value);
                }
                else
                {
                    com.Parameters.AddWithValue("ShowID", DDLShowID.SelectedValue);
                }

                if(DDLShopID.Text == "NULL")
                {
                    com.Parameters.AddWithValue("ShopID", DBNull.Value);
                }
                else
                {
                    com.Parameters.AddWithValue("ShopID", DDLShopID.SelectedValue);
                }
                com.ExecuteNonQuery();

                SuccessLabel.Visible = true;
                link.Close();

            }

            catch (Exception er)
            {
                Response.Write("Error: " + er.ToString());
            }
        }

     
    }
}