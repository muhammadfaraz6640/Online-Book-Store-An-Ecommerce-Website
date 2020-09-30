using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class Admin
    {

        public string Aid { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

        public string role = "Admin";

        public void signUp(Admin a)
        {
            Connection gcon = new Connection();
            // gcon.getConnection();
            gcon.ExecuteQuery("insert into Admin values ('" + a.Name + "','" + a.Email + "','" + a.Password + "')");
            gcon.ExecuteQuery("insert into Login values('" + a.Email + "','" + a.Password + "','" + a.role + "')");
        }
    }
}