using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class OrderDetails : ICrud<OrderDetails>
    {
        public int OrderID { get; set; }
        public int BuyerID { get; set; }
        public int SellerID { get; set; }
        public int BookID { get; set; }
        public int SalesID { get; set; }
        public string OrderStatus { get; set; }

        public void Add(OrderDetails s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into OrderDetails values('"+ s.BuyerID + "','" + s.SellerID + "','" + s.BookID + "','" + s.SalesID + "')");
        }

        public void Delete(OrderDetails s)
        {
            throw new NotImplementedException();
        }

        public List<OrderDetails> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<OrderDetails> GetIds2()
        {
            throw new NotImplementedException();
        }

        public List<OrderDetails> GetIds3()
        {
            throw new NotImplementedException();
        }

        public List<OrderDetails> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(OrderDetails a)
        {
            throw new NotImplementedException();
        }

        public OrderDetails Search(OrderDetails s)
        {
            throw new NotImplementedException();
        }

        public void Update(OrderDetails s)
        {
            throw new NotImplementedException();
        }
    }
}