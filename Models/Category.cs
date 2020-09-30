using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class Category : ICrud<Category>
    {
        public int Cid { get; set; }
        public string CatName { get; set; }
        public void Add(Category s)
        {
            throw new NotImplementedException();
        }

        public void Delete(Category s)
        {
            throw new NotImplementedException();
        }

        public List<string> GetIds()
        {
            Models.Connection con = new Connection();
            List<string> a = new List<string>();
            string query = "select CatName from category";
            SqlCommand com = new SqlCommand(query, con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                CatName = rd["CatName"].ToString();
                a.Add(CatName);
                CatName = "";
            }
            rd.Close();
            return a;
        }        
        public int GetIds2(string cat)
        {
            Connection con = new Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("Select Cid from category where CatName ='" + cat + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Cid = Convert.ToInt32(rd["Cid"]);
            }
            return Cid;
        }

        public List<Category> GetIds3()
        {
            throw new NotImplementedException();
        }

        public List<Category> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Category a)
        {
            throw new NotImplementedException();
        }

        public Category Search(Category s)
        {
            throw new NotImplementedException();
        }

        public void Update(Category s)
        {
            throw new NotImplementedException();
        }

        List<Category> ICrud<Category>.GetIds()
        {
            throw new NotImplementedException();
        }

        List<Category> ICrud<Category>.GetIds2()
        {
            throw new NotImplementedException();
        }
    }
}