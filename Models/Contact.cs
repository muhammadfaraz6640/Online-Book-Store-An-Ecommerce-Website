using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Online_Book_Store.Models
{
    public class Contact:ICrud<Contact>
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Body { get; set; }
        public string Subject { get; set; }

        public void Add(Contact s)
        {
            Connection gcon = new Connection();
            gcon.ExecuteQuery("insert into Contact values ('" + s.Name + "','" + s.Email + "','" + s.Subject + "','" + s.Body + "')");                        
        }

        public void Delete(Contact s)
        {
            throw new NotImplementedException();
        }

        public List<Contact> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<Contact> GetIds2()
        {
            throw new NotImplementedException();
        }

        public List<Contact> GetIds3()
        {
            throw new NotImplementedException();
        }

        public List<Contact> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Contact a)
        {
            throw new NotImplementedException();
        }

        public Contact Search(Contact s)
        {
            throw new NotImplementedException();
        }

        public void Update(Contact s)
        {
            throw new NotImplementedException();
        }
    }
}