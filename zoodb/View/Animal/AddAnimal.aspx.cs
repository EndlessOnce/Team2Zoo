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
    public partial class AddAnimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AnimalAdd_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
                link.Open();

                string addAni = "insert into animal (Name,Sex,Common_Name,Species,Health,Diet,Exhibit_ID) values(@Name, @Sex, @CName, @Species, @Health, @Diet,@ExID)";
                MySqlCommand com = new MySqlCommand(addAni, link);
                com.Parameters.AddWithValue("Name", TBName.Text);
                com.Parameters.AddWithValue("CName", TBComN.Text);
                com.Parameters.AddWithValue("Species", TBSpecies.Text);
                com.Parameters.AddWithValue("ExID", DDLEx.SelectedValue);
                com.Parameters.AddWithValue("Health", DDLHealth.SelectedValue);
                com.Parameters.AddWithValue("Diet", DDLDiet.SelectedValue);
                com.Parameters.AddWithValue("Sex", DDLSex.SelectedValue);

                com.ExecuteNonQuery();
                LSuccess.Visible = true;

                link.Close();
            }

            catch (Exception er)
            {
                Response.Write("Error: " + er);
            }
        }
    }
}