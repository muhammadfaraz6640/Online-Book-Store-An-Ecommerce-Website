using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Book_Store
{
    public partial class ContactUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetNames();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Models.Email em = new Models.Email();
                em.email = TextBox1.Text;
                em.Subject = TextBox2.Text;
                em.Body = TextBox3.Text;
                em.SendEmail(em);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Redit", "alert('Email Sent Successfully'); window.location='" + Request.ApplicationPath + "AdminHome.aspx';", true);
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        Models.Register s = new Models.Register();
        public void GetNames()
        {

            DropDownList1.Items.Clear();
            DropDownList1.Items.Insert(0, "--select User Name--");
            foreach (var item in s.GetNames())
            {
                DropDownList1.Items.Add(Convert.ToString(item));
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                Models.Connection con = new Models.Connection();
                string query = "select Email from Users where Name = '" + DropDownList1.Text + "'";
                SqlCommand com = new SqlCommand(query, con.getConnection());
                SqlDataReader rd = com.ExecuteReader();
                while (rd.Read())
                {
                    s.Email = rd["Email"].ToString();
                }
                TextBox1.Text = s.Email;
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}