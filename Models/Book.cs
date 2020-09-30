using System;
using System.Collections.Generic;
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

        public void Add(Book s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Books values ('" + s.BookName + "','" + s.Cid + "','" + s.Sellerid + "','" + s.BookPrice + "','" + s.BookPic + "','" + s.BookDiscount + "','" + s.BookCondition + "','" + s.BookDescription + "','" + s.SellingMethod + "')");
        }

        public void Delete(Book s)
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
    }
}