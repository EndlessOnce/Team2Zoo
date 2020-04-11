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
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            connection.Open();
            string checkUser = "select count(*) from db_user where email='" + TextBoxEmail.Text + "'";
            MySqlCommand compare = new MySqlCommand(checkUser, connection);
            int temp = Convert.ToInt32(compare.ExecuteScalar().ToString());
            if (temp == 1)
            {
                Response.Write("User already Exists");
            }
            connection.Close();
        }
    }
}