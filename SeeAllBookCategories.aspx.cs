using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class SeeAllBookCategories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Models.Category newCategory = new Models.Category();
            newCategory.CatName = TextBox1.Text;
            newCategory.Add(newCategory);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Successfully Added Category'); window.location='" + Request.ApplicationPath + "SeeAllBookCategories.aspx';", true);
        }
    }
}