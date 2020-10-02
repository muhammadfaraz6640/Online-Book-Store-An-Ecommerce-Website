using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Models.Connection con = new Models.Connection();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(RadioButton3.Checked == true)
            {
                try
                {
                    //cash on delivery
                    Models.OrderDetails order = new Models.OrderDetails();
                    Models.Register user = new Models.Register();
                    Models.Email em = new Models.Email();
                    int MethodID = 1;
                    string status = "Incomplete";
                    DateTime date = DateTime.Now;
                    order.BuyerID = user.GetIds(Session["UserInfo"].ToString());                    
                    em.email = Session["UserInfo"].ToString();
                    em.Subject = "Order Placed Successfully";
                    em.Body = "Wait for the delivery and ready with cash '"+ Convert.ToDouble(Session["grandTotal"].ToString()) + "' .. stay connected"; 
                    em.SendEmail(em);
                    con.ExecuteQuery("insert into Sales values('" + order.BuyerID + "','" + MethodID + "','" + Convert.ToDouble(Session["grandTotal"].ToString()) + "','" + date + "','" + status + "')");
                    SqlCommand com = new SqlCommand("select Bid from Cart where BuyerID = '" + order.BuyerID + "' ", con.getConnection());
                    SqlDataReader rd = com.ExecuteReader();
                    
                    while (rd.Read())
                    {
                        order.BookID = Convert.ToInt32(rd["Bid"].ToString());
                        //getting sales id
                        SqlCommand com2 = new SqlCommand("select Uid from Books where Bid = '" + order.BookID + "' ", con.getConnection());
                        SqlDataReader rd2 = com2.ExecuteReader();

                        while (rd2.Read())
                        {
                            order.SellerID = Convert.ToInt32(rd2["Uid"].ToString());
                        }
                        //getting sales ID
                        SqlCommand com3 = new SqlCommand("select SalesID from Sales where BuyerID = '" + order.BuyerID + "' and dated = '"+ date +"' ", con.getConnection());
                        SqlDataReader rd3 = com3.ExecuteReader();

                        while (rd3.Read())
                        {
                            order.SalesID = Convert.ToInt32(rd3["SalesID"].ToString());
                        }
                        order.Add(order);
                        //updating books
                        string issold = "Yes";
                        string sql = "UPDATE Books Set IsSold = '" + issold + "'  WHERE Bid = '" + order.BookID + "' ";                        
                        SqlCommand cmd = new SqlCommand(sql, con.getConnection());                        
                        cmd.ExecuteNonQuery();
                    }
                    string sql1 = "Delete From Cart where BuyerID = '" + order.BuyerID + "' ";
                    SqlCommand cmd1 = new SqlCommand(sql1, con.getConnection());
                    cmd1.ExecuteNonQuery();
              
                    
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Successfully Placed Order...check Your mail'); window.location='" + Request.ApplicationPath + "ThankYouCOD.aspx';", true);
                }
                catch (Exception ex) {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
            else if(RadioButton1.Checked == true || RadioButton2.Checked == true)
            {
                //paypal                
                

                try
                {
                    //cash on delivery
                    Models.OrderDetails order = new Models.OrderDetails();
                    Models.Register user = new Models.Register();
                    Models.Email em = new Models.Email();
                    int MethodIDs = 2;
                    string status = "Incomplete";
                    DateTime date = DateTime.Now;
                    order.BuyerID = user.GetIds(Session["UserInfo"].ToString());
                    em.email = Session["UserInfo"].ToString();
                    em.Subject = "Order Placed Successfully";
                    em.Body = "Wait for the delivery and ready with cash '" + Convert.ToDouble(Session["grandTotal"].ToString()) + "' .. stay connected";
                    em.SendEmail(em);
                    con.ExecuteQuery("insert into Sales values('" + order.BuyerID + "','" + MethodIDs + "','" + Convert.ToDouble(Session["grandTotal"].ToString()) + "','" + date + "','" + status + "')");
                    SqlCommand com = new SqlCommand("select Bid from Cart where BuyerID = '" + order.BuyerID + "' ", con.getConnection());
                    SqlDataReader rd = com.ExecuteReader();

                    while (rd.Read())
                    {
                        order.BookID = Convert.ToInt32(rd["Bid"].ToString());
                        //getting sales id
                        SqlCommand com2 = new SqlCommand("select Uid from Books where Bid = '" + order.BookID + "' ", con.getConnection());
                        SqlDataReader rd2 = com2.ExecuteReader();

                        while (rd2.Read())
                        {
                            order.SellerID = Convert.ToInt32(rd2["Uid"].ToString());
                        }
                        //getting sales ID
                        SqlCommand com3 = new SqlCommand("select SalesID from Sales where BuyerID = '" + order.BuyerID + "' and dated = '" + date + "' ", con.getConnection());
                        SqlDataReader rd3 = com3.ExecuteReader();

                        while (rd3.Read())
                        {
                            order.SalesID = Convert.ToInt32(rd3["SalesID"].ToString());
                        }
                        order.Add(order);
                        //updating books
                        string issold = "Yes";
                        string sql = "UPDATE Books Set IsSold = '" + issold + "'  WHERE Bid = '" + order.BookID + "' ";
                        SqlCommand cmd = new SqlCommand(sql, con.getConnection());
                        cmd.ExecuteNonQuery();
                    }
                    string sql1 = "Delete From Cart where BuyerID = '" + order.BuyerID + "' ";
                    SqlCommand cmd1 = new SqlCommand(sql1, con.getConnection());
                    cmd1.ExecuteNonQuery();

                    double totalAmount = Convert.ToDouble(Session["grandTotal"].ToString());

                    Response.Redirect("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=onlinebookstoresydney@gmail.com&amount=" + totalAmount + "&return=http://localhost:44346/ThankyouPayment.aspx");

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "')</script>");
                }
            }
        }
    }
}

//sb-mr0ny3358757@personal.example.com
//oF?@E34&

//sb-ldkaz3361068@business.example.com   business
//Lzbahq!5