using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Button1.Visible = true;
                Button2.Visible = false;
                LinkButton1.Visible = false;
            }
            else if (Session["role"].ToString() == "User")
            {
                Button1.Visible = false;
                Button2.Visible = true;                
                LinkButton1.Visible = true;
            }            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
     
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Models.Register user = new Models.Register();
            user.Uid = user.GetIds(Session["UserInfo"].ToString());
            Response.Redirect("Profile.aspx?Uid=" + user.Uid);
        }
    }
}