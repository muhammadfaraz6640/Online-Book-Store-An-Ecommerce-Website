using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store.Models
{
    public partial class AdminReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('All Feilds Are Required');", true);
                }
                else
                {
                    Models.Admin ad = new Models.Admin();
                    ad.Name = TextBox1.Text;
                    ad.Email = TextBox2.Text;
                    ad.Password = TextBox3.Text;
                    ad.signUp(ad);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Admin Added Successfully'); window.location='" + Request.ApplicationPath + "AdminHome.aspx';", true);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}