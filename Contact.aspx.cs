using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox2.Text == "" || TextBox3.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Please Fill Out All Feilds');", true);
                }
                else
                {
                    Models.Contact cont = new Models.Contact();
                    cont.Name = TextBox1.Text;
                    cont.Email = TextBox2.Text;
                    cont.Subject = TextBox3.Text;
                    cont.Body = TextBox4.Text;
                    cont.Add(cont);
                    Models.Email em = new Models.Email();
                    em.email = TextBox2.Text;
                    em.Subject = "Thank You So Much For Contacting Us";
                    em.Body = "we will respond soon on your email ASAP stay Connected.."; 
                    em.SendEmail(em);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Email Sent Successfully'); window.location='" + Request.ApplicationPath + "Contact.aspx';", true);
                    Models.ClearTextBox ct = new Models.ClearTextBox();
                    ct.ClearTextbox(TextBox1, TextBox2, TextBox3, TextBox4);
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}