using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class DeleteItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Models.Connection con = new Models.Connection();
                Models.Register user = new Models.Register();
                int buyerID = user.GetIds(Session["UserInfo"].ToString());                
                int BookID = Convert.ToInt32(Request.QueryString["bid"].ToString());
                string sql = "Delete From Cart where Bid = '" + BookID + "' and BuyerID = '" + buyerID + "' ";
                SqlCommand cmd = new SqlCommand(sql, con.getConnection());
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Successfully deleted Item From Cart'); window.location='" + Request.ApplicationPath + "Cart.aspx';", true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}