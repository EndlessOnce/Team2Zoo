using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zoodb.View.Users
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["New"] != null)
            {
                Welcome.Text += Session["New"].ToString();
            }
            else
                Response.Redirect("~/View/Login/LoginPage");

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["New"] = null;
            Response.Redirect("~/View/Login/LoginPage");

        }
    }
}