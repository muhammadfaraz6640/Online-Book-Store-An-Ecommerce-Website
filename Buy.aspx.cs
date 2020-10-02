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
    public partial class Buy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        string IsSold = "No";
        Models.Connection con = new Models.Connection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void ShowAllBooks()
        {
            try
            {
                
                con.getConnection();
                cmd.CommandText = "select * from Books where IsSold = '"+ IsSold +"' order by DiscountPercent desc";
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
        protected void ShowAllCharity()
        {

            try
            {
                string Ischarity = "Charity";
                con.getConnection();
                cmd.CommandText = "select * from Books where IsCharity = '" + Ischarity + "' and IsSold = '" + IsSold + "' order by DiscountPercent desc";
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

        protected void ShowAllPayment()
        {

            try
            {
                string Ispayment = "payment";
                con.getConnection();
                cmd.CommandText = "select * from Books where IsCharity = '" + Ispayment + "' and IsSold = '" + IsSold + "' order by DiscountPercent desc";
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




        protected void Button1_Click(object sender, EventArgs e)
        {
            string BookName = TextBox1.Text;
            con.getConnection();
            cmd.CommandText = "select * from Books where BookName Like '" + BookName + "%' and IsSold = '"+ IsSold +"'";
            cmd.Connection = con.getConnection();
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "Books");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.Text == "Charity")
            {
                ShowAllCharity();
            }
            else if(DropDownList1.Text == "Payment")
            {
                ShowAllPayment();
            }
            else if(DropDownList1.Text == "All")
            {
                ShowAllBooks();
            }
        }
    }
}