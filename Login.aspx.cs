using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Login log = new Models.Login();
            log.Email = TextBox1.Text;
            log.Password = TextBox2.Text;
            log.GetLogin(log);
            if (log.cond == true && log.role == "User")
            {
                Session["UserInfo"] = TextBox1.Text;
                Session["role"] = log.role;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Welcome User...You can buy Books/Jourals'); window.location='" + Request.ApplicationPath + "index.aspx';", true);
            }            
            else if (log.cond == true && log.role == "Admin")
            {
                Session["AdminInfo"] = TextBox1.Text;
                Session["role"] = log.role;
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Welcome Admin'); window.location='" + Request.ApplicationPath + "AdminHome.aspx';", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Invalid User Id Or Password');", true);
            }
        }
    }
}