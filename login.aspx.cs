using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace zoodb
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogButton_Click(object sender, EventArgs e)
        {
            SqlConnection link = new SqlConnection(ConfigurationManager.ConnectionStrings["logRegConn"].ConnectionString);
            link.Open();
            string verifyUser = "select count(*) FROM logReg WHERE userName= '" + LoginUser.Text + "'";
            SqlCommand comm = new SqlCommand(verifyUser, link);
            int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
            link.Close();

            if (temp == 1)
            {
                link.Open();
                string verifyPass = "select password FROM logReg WHERE userName= '" + LoginUser.Text + "'";
                SqlCommand passCom = new SqlCommand(verifyPass, link);
                string password = passCom.ExecuteScalar().ToString();

                if (password == LoginPass.Text)   // if username and password are correct, redirect user to profile page
                {
                    LoginError.Text = "Login is Sucessful";
                    LoginError.Visible = true;
                }
                else
                {
                    LoginError.Text = "Password is incorrect";  //if password doesnt match username in db
                    LoginError.Visible = true;

                }
                link.Close();

            }
            else
            {
                LoginError.Text = "Invalid Username or Password";   // if username or password is not correct or user doesnt exist in db
                LoginError.Visible = true;

            }


        }

        protected void RegButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["logRegConn"].ConnectionString);
            con.Open();
            string verifyUser = "select count(*) FROM logReg WHERE userName= '" + NewUser.Text + "'";
            SqlCommand com = new SqlCommand(verifyUser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();

            if (temp != 1)
            {
                con.Open();
                string passwordReg = NewPass.Text;
                string confirmPass = ConfirmPass.Text;

                if (passwordReg != confirmPass)  //ensures user enters password correctly twice
                {
                    RegError.Text = "Passwords do not match.Please try again";
                    RegError.Visible = true;
                }

                else      // adds the username and password into the db
                {
                    string insertQuery = "insert into logReg (userName,password,confirmPassword) values (@user, @password,@confPass)";
                    SqlCommand comm = new SqlCommand(insertQuery, con);
                    comm.Parameters.AddWithValue("@user", NewUser.Text);
                    comm.Parameters.AddWithValue("@password", NewPass.Text);
                    comm.Parameters.AddWithValue("@confPass", ConfirmPass.Text);
                    comm.ExecuteNonQuery();
                    RegError.Text = "Registraion is Sucessful. Please login now.";
                    RegError.Visible = true;
                }

            }
            else
            {
                RegError.Text = "Username is taken.Please enter a different username.";
                RegError.Visible = true;
            }
        }
    } 

}