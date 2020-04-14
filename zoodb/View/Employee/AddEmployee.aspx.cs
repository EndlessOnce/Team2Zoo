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
                com.Parameters.AddWithValue("JobID", DDLJob.SelectedItem.ToString());
                com.Parameters.AddWithValue("ExID", DDLExID.SelectedItem.ToString());
                com.Parameters.AddWithValue("ShowID", DDLShowID.SelectedItem.ToString());
                com.Parameters.AddWithValue("ShopID", DDLShopID.SelectedItem.ToString());

                com.ExecuteNonQuery();

                Response.Write("Insertion Sucessful!");
            }

            catch (Exception er)
            {
                Response.Write("Error: " + er.ToString());
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}