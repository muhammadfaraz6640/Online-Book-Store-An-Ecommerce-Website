using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int User_id = Convert.ToInt16(Request.QueryString["Uid"].ToString());
                Models.Register user = new Models.Register();
                int exact_id = user.GetIds(Session["UserInfo"].ToString());
                if (Session["role"] == null)
                {
                    Response.Redirect("Login.aspx");
                    Response.Write("<script>alert('First Login with Your account..')</script>");
                }
                else if (User_id != exact_id)
                {
                    Response.Redirect("index.aspx");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}