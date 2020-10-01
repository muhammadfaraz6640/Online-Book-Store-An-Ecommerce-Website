using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class AddCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Redirect("Login.aspx");
                Response.Write("<script>alert('First Login with Your account..')</script>");
            }
            else
            {
                try
                {
                    Models.Cart cart = new Models.Cart();
                    Models.Book book = new Models.Book();
                    Models.Register user = new Models.Register();
                    cart.Bid = Convert.ToInt16(Request.QueryString["bid"].ToString());
                    cart.SellerID = book.GetIds(cart.Bid);
                    cart.BuyerID = user.GetIds(Session["UserInfo"].ToString());
                    cart.BookPrice = book.GetPrice(cart.Bid);
                    cart.BookName = book.GetName(cart.Bid);
                    cart.BookPic = book.GetPic(cart.Bid);
                    cart.Add(cart);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Successfully Added To cart...'); window.location='" + Request.ApplicationPath + "index.aspx';", true);
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
        }
    }
}