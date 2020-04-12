using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace zoodb
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
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

        protected void Registration_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGuid = Guid.NewGuid();

                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
                con.Open();
                string insertUser = "insert into db_user (user_id, email, password) values (@User_ID, @Email, @Password)";
                MySqlCommand cmd = new MySqlCommand(insertUser, con);
                cmd.Parameters.AddWithValue("@User_ID", newGuid.ToString());
                cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2PW.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
                Response.Write("You have been Registered");

                con.Close();
            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
    }
}