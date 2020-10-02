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
            ShowPaymentBooks();
            ShowCharityBooks();
        }        
        SqlCommand cmd1 = new SqlCommand();
        SqlDataAdapter sdr1 = new SqlDataAdapter();
        DataSet ds1 = new DataSet();
        protected void ShowCharityBooks()
        {
            try
            {
                string Ischarity = "Charity";
                string Issold = "No";
                con.getConnection();
                cmd1.CommandText = "select TOP 3 * from Books where IsCharity = '" + Ischarity + "' and IsSold = '" + Issold + "' order by Bid desc";
                cmd1.Connection = con.getConnection();
                sdr1.SelectCommand = cmd1;
                sdr1.Fill(ds1, "Books");
                Repeater2.DataSource = ds1;
                Repeater2.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        Models.Connection con = new Models.Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void ShowPaymentBooks()
        {
            try
            {
                string Ispayment = "payment";
                string Issold = "No";
                con.getConnection();
                cmd.CommandText = "select TOP 3 * from Books where IsCharity = '"+ Ispayment + "' and IsSold = '" + Issold + "'  order by Bid desc";
                cmd.Connection = con.getConnection();
                sdr.SelectCommand = cmd;
                sdr.Fill(ds, "Books");
                Repeater1.DataSource = ds;
                Repeater1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}