using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class Sell : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Redirect("Login.aspx");
                Response.Write("<script>alert('First Login with Your account..')</script>");
            }
            if (!IsPostBack)
            {
                GetNames();
            }
        }
        Models.Category cat = new Models.Category();
        public void GetNames()
        {

            DropDownList3.Items.Clear();
            DropDownList3.Items.Insert(0, "--select Book Category--");
            foreach (var item in cat.GetIds())
            {
                DropDownList3.Items.Add(Convert.ToString(item));
            }
        }        

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList2.Text == "Charity")
            {
                //TextBox3.ReadOnly = true;
                //TextBox4.ReadOnly = true;
                TextBox3.Visible = false;
                TextBox4.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
            }
            else
            {
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                Label5.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                //TextBox3.ReadOnly = false;
                //TextBox4.ReadOnly = false;
            }
        }        
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            { 
                Models.Book book = new Models.Book();
                book.BookName = TextBox1.Text;
                book.BookPic = Label1.Text;
                book.Cid = cat.GetIds2(DropDownList3.Text);
                Models.Register user = new Models.Register();
                book.Sellerid = user.GetIds(Session["UserInfo"].ToString());
                book.BookPrice = Convert.ToDouble(TextBox3.Text);
                double discount = Convert.ToDouble(TextBox4.Text);
                double disPercent = discount / 100;
                double deductedPrice = disPercent * book.BookPrice;
                double discountedPrice = book.BookPrice - deductedPrice;
                book.BookDiscount = discountedPrice;
                book.BookCondition = DropDownList1.Text;
                book.BookDescription = TextBox2.Text;
                book.SellingMethod = DropDownList2.Text;
                book.Add(book);
                Models.ClearTextBox ct = new Models.ClearTextBox();
                ct.ClearTextbox(TextBox1, TextBox2, TextBox3, TextBox4);
                Image1.ImageUrl = "";
                Label1.Text = "";                
                Models.Email em = new Models.Email();
                em.email = Session["UserInfo"].ToString();
                em.Subject = "Thank You So Much For Uploading Book";
                em.Body = "We Will Collect Your Book Soon";
                em.SendEmail(em);
                Response.Write("<script>alert('Book uploaded successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Books/") + Session["UserInfo"].ToString() + filename);
                Image1.ImageUrl = "~/Books/" + filename;
                Label1.Text = "Books/" + Session["UserInfo"].ToString() + filename ;
            }
            else
            {
                Response.Write("<script>alert('File Not Found')</script>");
            }
        }
    }
}