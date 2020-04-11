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

        }

        protected void Registration_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
                con.Open();
                string insertUser = "insert into db_user (email, password) values (@Email, @Password)";
                MySqlCommand cmd = new MySqlCommand(insertUser, con);
                cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2PW.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("Default.aspx");
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