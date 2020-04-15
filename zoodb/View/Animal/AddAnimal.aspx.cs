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

           // string txt = TBName.Text;
           // good Session["aniName"] = txt;  /*
            Session["aniName"] = TBName.Text; //string
            Session["aniHealth"] = DDLHealth.SelectedItem.Value.ToString();
            Session["aniEx"] = DDLEx.SelectedItem.Value.ToString();
            Session["aniDiet"] = DDLDiet.SelectedItem.Value.ToString();
           // Response.Redirect("updateAnimal.aspx");    */

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
               
                //////test session vars
              //  string aAnim = TBName.Text;
              //  Session["aniName"] = aAnim;
                /*
                Session["aniName"] = TBName.Text; //string
                Session["aniHealth"] = DDLHealth.SelectedValue;
                Session["aniEx"] = DDLEx.SelectedValue;
                Session["aniDiet"] = DDLDiet.SelectedValue;
                Response.Redirect("updateAnimal.aspx");
              
                // Server.Transfer("updateAnimal.aspx");   */
                //~/

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