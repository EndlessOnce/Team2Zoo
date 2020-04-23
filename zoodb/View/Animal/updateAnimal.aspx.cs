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
            if (Session["aniName"] != null && !IsPostBack)
            {
                amName.Text = Session["aniName"].ToString();
                SelectH.SelectedValue = Session["aniHealth"].ToString();
                ddExh.SelectedValue = Session["aniEx"].ToString();
                ddDiet.SelectedValue = Session["aniDiet"].ToString();

                //  amName.Text = passedAnNm;
            }
        }
    
        protected void updatePro_Click(object sender, EventArgs e)
        {
            string animalName = String.Format("{0}", Request.Form["amName"]);
            string health = String.Format("{0}", Request.Form["SelectH"]);
            string exhibit = String.Format("{0}", Request.Form["ddExh"]);
            string diet = String.Format("{0}", Request.Form["ddDiet"]);


            MySqlConnection link = new MySqlConnection(ConfigurationManager.ConnectionStrings["zoodb"].ConnectionString);
            link.Open();
            string updateQuery = "update animal SET Health=@health , Exhibit_ID=@exID , Diet=@diet WHERE Name=@name";
            MySqlCommand comm = new MySqlCommand(updateQuery, link);
            comm.Parameters.AddWithValue("@name", animalName);
            comm.Parameters.AddWithValue("@health", health);
            comm.Parameters.AddWithValue("@exID", exhibit);
            comm.Parameters.AddWithValue("@diet", diet);

            comm.ExecuteNonQuery();
            labelAnimUp.Visible = true;
            link.Close();
        }

}
}
