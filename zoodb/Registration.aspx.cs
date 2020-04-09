using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace zoodb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registration_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbq83pweu5kpypConnectionString"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from db_user where email = @Email and Password = @password", con);
            //Response.Write("You have been Registered");
            cmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2PW.Text);
        }

  
    }
}