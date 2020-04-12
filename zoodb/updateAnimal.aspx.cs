using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zoodb
{
    public partial class updateAnimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
    public class MyViewModel
    {
        public string animalName { get; set; }
        public string health { get; set; }
        public string diet { get; set; }
        public string exhibit { get; set; }

    }
}
//Health, Diet, Exhibit_ID