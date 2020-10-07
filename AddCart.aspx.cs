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
            Models.Cart cart = new Models.Cart();
            Models.Register user = new Models.Register();
            Models.Book book = new Models.Book();
            if (Session["role"] == null)
            {
                Response.Redirect("Login.aspx");
                Response.Write("<script>alert('First Login with Your account..')</script>");
            }
            else
            {
                cart.Bid = Convert.ToInt16(Request.QueryString["bid"].ToString());
                cart.BuyerID = user.GetIds(Session["UserInfo"].ToString());
                cart.SellerID = book.GetIds(cart.Bid);
                if(cart.BuyerID == cart.SellerID)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('This is Your Book so you cannot Buy it'); window.location='" + Request.ApplicationPath + "index.aspx';", true);
                }
                else
                {
                    
                    
                    cart.BookPrice = book.GetPrice(cart.Bid);
                    cart.BookName = book.GetName(cart.Bid);
                    cart.BookPic = book.GetPic(cart.Bid);
                    cart.Add(cart);
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Successfully Added To cart...'); window.location='" + Request.ApplicationPath + "index.aspx';", true);
                }
                
                    
                    
            }
        }
    }
}