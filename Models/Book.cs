using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class Book : ICrud<Book>
    {
        public int Bid { get; set; }
        public int Cid { get; set; }
        public int Sellerid { get; set; }
        public string BookName { get; set; }
        public double BookPrice { get; set; }
        public double BookDiscount { get; set; }
        public string BookPic { get; set; }
        public string BookCondition { get; set; }
        public string BookDescription { get; set; }
        public string SellingMethod { get; set; }
        public string IsSold = "No";

        public void Add(Book s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Books values ('" + s.BookName + "','" + s.Cid + "','" + s.Sellerid + "','" + s.BookPrice + "','" + s.BookPic + "','" + s.BookDiscount + "','" + s.BookCondition + "','" + s.BookDescription + "','" + s.SellingMethod + "','" + s.IsSold + "')");
        }

        public void Delete(Book s)
        {
            throw new NotImplementedException();
        }

        public int GetIds(int Bookid)
        {
            Connection con = new Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("Select Uid from Books where Bid ='" + Bookid + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Sellerid = Convert.ToInt32(rd["Uid"]);
            }
            return Sellerid;
        }

        public double GetPrice(int Bookid)
        {
            Connection con = new Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("Select DiscountPercent from Books where Bid ='" + Bookid + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                BookDiscount = Convert.ToDouble(rd["DiscountPercent"]);
            }
            return BookDiscount;
        }

        public string GetPic(int Bookid)
        {
            Connection con = new Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("Select BookPic from Books where Bid ='" + Bookid + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                BookPic = rd["BookPic"].ToString();
            }
            return BookPic;
        }

        public string GetName(int Bookid)
        {
            Connection con = new Connection();
            con.getConnection();
            SqlCommand com = new SqlCommand("Select BookName from Books where Bid ='" + Bookid + "'", con.getConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                BookName = rd["BookName"].ToString();
            }
            return BookName;
        }
        public List<Book> GetIds3()
        {
            throw new NotImplementedException();
        }

        public List<Book> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Book a)
        {
            throw new NotImplementedException();
        }

        public Book Search(Book s)
        {
            throw new NotImplementedException();
        }

        public void Update(Book s)
        {
            throw new NotImplementedException();
        }

        public List<Book> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<Book> GetIds2()
        {
            throw new NotImplementedException();
        }
    }
}