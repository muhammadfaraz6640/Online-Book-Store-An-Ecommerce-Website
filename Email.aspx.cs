using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Email : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Models.Email em = new Models.Email();
                em.email = TextBox1.Text;
                em.Subject = TextBox2.Text;
                em.Body = TextBox3.Text;
                em.SendEmail(em);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Email Sent Successfully'); window.location='" + Request.ApplicationPath + "AdminHome.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}