using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class Cart : ICrud<Cart>
    {
        public int CartID { get; set; }
        public int BuyerID { get; set; }
        public int SellerID { get; set; }
        public int Bid { get; set; }
        public double BookPrice { get; set; }

        public string BookPic { get; set; }
        public string BookName { get; set; }

        public void Add(Cart s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Cart values ('" + s.BuyerID + "','" + s.SellerID + "','" + s.BookPrice + "','" + s.Bid + "','" + s.BookName + "','" + s.BookPic + "')");
        }

        public void Delete(Cart s)
        {
            throw new NotImplementedException();
        }

        public List<Cart> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<Cart> GetIds2()
        {
            throw new NotImplementedException();
        }

        public List<Cart> GetIds3()
        {
            throw new NotImplementedException();
        }

        public List<Cart> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Cart a)
        {
            throw new NotImplementedException();
        }

        public Cart Search(Cart s)
        {
            throw new NotImplementedException();
        }

        public void Update(Cart s)
        {
            throw new NotImplementedException();
        }
    }
}