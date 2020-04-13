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

        protected void add_Emp_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            /*  string verifyUser = "select count(*) FROM logReg WHERE userName= '" + LoginUser.Text + "'";
            SqlCommand comm = new SqlCommand(verifyUser, link);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            link.Close();*/

            //string addEmp = "insert into employee (F_Name,L_Name,Job_ID,f_name.Value;


        }

    }
}