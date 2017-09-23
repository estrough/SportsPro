using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportsPro.Models
{
    public class CustomerList
    {
        private List<Customer> customerItems;

        public CustomerList()
        {
            customerItems = new List<Customer>();
        }

        public int Count
        {
            get { return customerItems.Count; }
        }

        public Customer this[int index]
        {
            get { return customerItems[index]; }
            set { customerItems[index] = value; }
        }
        public Customer this[string id]
        {
            get
            {
                foreach (Customer c in customerItems)
                    if (c.CustomerID == id) return c;
                return null;
            }
        }

        public static CustomerList GetCustomers()
        {
            CustomerList cList = (CustomerList)HttpContext.Current.Session["Contact"];
            if (cList == null)
                HttpContext.Current.Session["Contact"] = new CustomerList();
            return (CustomerList)HttpContext.Current.Session["Contact"];
        }

        public void AddItem(Customer customer)
        {
            Customer c = new Customer();
            customerItems.Add(c);
        }

        public void RemoveAt(int index)
        {
            customerItems.RemoveAt(index);
        }

        public void Clear()
        {
            customerItems.Clear();
        }
    }
}