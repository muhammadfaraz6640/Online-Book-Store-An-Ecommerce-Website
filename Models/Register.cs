using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{    
    public class Register : ICrud<Register>
    {
        public int Uid { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public string PostCode { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }
        public string City { get; set; }        

        public string role = "User";

        public void Add(Register s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Users values ('" + s.Name + "','" + s.Contact + "','" + s.Gender + "','" + s.Address + "','" + s.PostCode + "','" + s.Email + "','" + s.Pass + "','" + s.City + "')");
            gcon.ExecuteQuery("insert into Login values('" + s.Email + "','" + s.Pass + "','" + s.role + "')");
        }

        public void Update(Register s)
        {
            throw new NotImplementedException();
        }

        public void Delete(Register s)
        {
            throw new NotImplementedException();
        }

        public Register Search(Register s)
        {
            throw new NotImplementedException();
        }

        public int GetIds(string em)
        {
            Connection con = new Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("Select Uid from Users where Email ='" + em + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Uid = Convert.ToInt32(rd["Uid"]);
            }
            return Uid;
        }

        public List<Register> GetIds2()
        {
            throw new NotImplementedException();
        }

        public List<Register> GetIds3()
        {
            throw new NotImplementedException();
        }

        public List<Register> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Register a)
        {
            throw new NotImplementedException();
        }

        public List<Register> GetIds()
        {
            throw new NotImplementedException();
        }
    }
}