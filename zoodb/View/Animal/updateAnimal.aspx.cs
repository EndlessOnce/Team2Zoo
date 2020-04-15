using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;
namespace zoodb
{
    public partial class updateAnimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void updatePro_Click(object sender, EventArgs e)
        {
            string animalName = String.Format("{0}", Request.Form["anName"]);
            string health = String.Format("{0}", Request.Form["SelectH"]);
            string exhibit = String.Format("{0}", Request.Form["Exhibit"]);
            string diet = String.Format("{0}", Request.Form["diet1"]);


            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update Animal (Name,Health,Exhibit_ID,Diet) values (@name,@health,@exID,@Diet)";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@name", animalName);
            comm.Parameters.AddWithValue("@health", health);
            comm.Parameters.AddWithValue("@exID", exhibit);
            comm.Parameters.AddWithValue("@Diet", diet);

            comm.ExecuteNonQuery();
            labelAnimUp.Visible = true;
            link.Close();
        }

    }
}
//Health, Diet, Exhibit_ID
