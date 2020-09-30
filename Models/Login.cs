using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class Login
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string role { get; set; }

        public bool cond = false;
        public Connection con = new Connection();
        public void GetLogin(Login lo)
        {
            con.getConnection();
            SqlCommand com = new SqlCommand("Select * from Login where email ='" + lo.Email + "' and password = '" + lo.Password + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                string Email = rd["email"].ToString();
                string Password = rd["password"].ToString();
                if (Email == lo.Email && Password == lo.Password)
                {
                    cond = true;
                    lo.role = rd["role"].ToString();
                }
            }
        }
    }
}