using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data;

namespace zoodb
{
    public partial class SearchEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BFName_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string name = String.Format("{0}", Request.Form["sf_name"]);
            string searchQuery = "select * from employee where f_name like @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", $"%{name}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void BLName_Click(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string name = String.Format("{0}", Request.Form["sl_name"]);
            string searchQuery = "select * from employee where l_name like @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", $"%{name}%");
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DDLJobID_SelectedIndexChanged(object sender, EventArgs e)
        {
            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();

            string name = String.Format("{0}", Request.Form["DDLJobID"]);
            string searchQuery = "select employee.Employee_ID,employee.f_name,employee.l_name,employee.job_id, job.job_name,employee.Exhibit_ID,employee.show_ID,employee.shop_ID FROM employee INNER JOIN job ON employee.job_ID = job.job_ID WHERE employee.job_ID = @name";
            MySqlCommand comm = new MySqlCommand(searchQuery, link);
            comm.Parameters.AddWithValue("@name", name);
            DataTable dt = new DataTable();
            MySqlDataAdapter sda = new MySqlDataAdapter(comm);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}