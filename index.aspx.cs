using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["role"] == null)
            {
                Label1.Visible = false;
                Label1.Text = "";
            }
            else if (Session["role"].ToString() == "User")
            {
                Label1.Visible = true;
                Label1.Text = Session["UserInfo"].ToString();
            }
        }
    }
}