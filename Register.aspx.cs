using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Online_Book_Store
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Connection con = new Models.Connection();            
            try
            {
                
                string gender = "";                
                Models.Register User = new Models.Register();
                User.Name = TextBox1.Text;
                User.Contact = TextBox4.Text;
                User.Address = TextBox5.Text;                
                User.PostCode = TextBox7.Text;
                User.Email = TextBox2.Text;
                User.Pass = TextBox3.Text;
                User.City = TextBox6.Text;
                if (RadioButton1.Checked)
                {
                    gender = "Male";
                }
                else if (RadioButton2.Checked)
                {
                    gender = "Female";
                }
                User.Gender = gender;
                User.Add(User);
                Models.Email em = new Models.Email();
                em.email = TextBox2.Text;
                em.Subject = "Thank You So Much For Registration";
                em.Body = "You can sale your used and new books..Also you can donate your Book"; //will be changed later
                em.SendEmail(em);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Successfully Regsitered...check Your mail'); window.location='" + Request.ApplicationPath + "Login.aspx';", true);
                Models.ClearTextBox ct = new Models.ClearTextBox();
                ct.ClearTextbox(TextBox1, TextBox2, TextBox3, TextBox4, TextBox5, TextBox6, TextBox7);
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }            
        }
    }
}