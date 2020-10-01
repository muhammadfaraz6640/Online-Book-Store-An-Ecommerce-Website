using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Cart : System.Web.UI.Page
    {
        Models.Connection con = new Models.Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            DataSet ds = new DataSet();
            if (Session["role"] == null)
            {
                Response.Redirect("Login.aspx");
                Response.Write("<script>alert('First Login with Your account..')</script>");
            }
            else
            {
                try
                {
                    Button2.Visible = false;
                    Models.Register user = new Models.Register();
                    int BuyerID = user.GetIds(Session["UserInfo"].ToString());
                    con.getConnection();
                    cmd.CommandText = "select * from Cart where BuyerID = '" + BuyerID + "'";
                    cmd.Connection = con.getConnection();
                    sdr.SelectCommand = cmd;
                    sdr.Fill(ds, "Cart");
                    Repeater1.DataSource = ds;
                    Repeater1.DataBind();
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double totalAmount = Convert.ToDouble(Session["grandTotal"].ToString());
            Response.Redirect("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=clashofc036-facilitator@gmail.com&amount=" + totalAmount + "&return=http://localhost:12905/Thankyou.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                double GrandTotal = 0;
                double Total = 0;
                Models.Register user = new Models.Register();
                int Buyerid = user.GetIds(Session["UserInfo"].ToString());
                SqlCommand com1 = new SqlCommand("select sum(BookPrice) as Total from Cart where BuyerID ='" + Buyerid + "'", con.getConnection());
                //GrandTotal = Convert.ToDouble(com1.ExecuteScalar());
                SqlDataReader rd1 = com1.ExecuteReader();
                while (rd1.Read())
                {
                  Total = Convert.ToDouble(rd1["Total"].ToString());
                GrandTotal = GrandTotal + Total;
                Total = 0;
                }
                Label1.Text = GrandTotal.ToString();
                Session["grandTotal"] = GrandTotal;
                Button2.Visible = true;
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}