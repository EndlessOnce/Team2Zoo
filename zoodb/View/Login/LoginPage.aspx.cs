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
            connection.Close();
            if (temp == 1)
            {
                connection.Open();
                string checkPassword = "select password from db_user where email='" + TextBoxEmail.Text + "'";
                MySqlCommand passwordCheck = new MySqlCommand(checkPassword, connection);
                string password = passwordCheck.ExecuteScalar().ToString(); 
                /*Just in case there might be .Replace(" " , "");*/
                if (password == TextBoxPassword.Text)
                {
                    Session["New"] = TextBoxEmail.Text;
                    Response.Write("Password is correct.");

                    string getUserRole = "select role from db_user where email='" + TextBoxEmail.Text + "'";
                    MySqlCommand roleCheck = new MySqlCommand(getUserRole, connection);
                    string role = roleCheck.ExecuteScalar().ToString();

                    if(role == "Admin")
                    {
                        Response.Redirect("~/View/Users/Admin.aspx");
                    }

                    else if(role == "Emp")
                    {
                        Response.Redirect("~/View/Users/User.aspx");
                    }
                }
                else
                {
                    Response.Write("Password is not correct.");
                }
            }
            else
            {
                Response.Write("Username  is not correct.");

            }
        }
    }
}