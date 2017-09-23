using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportsPro.Models
{
    public class Customer
    {
        public string CustomerID { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string State { get; set; }
        public string ZipCode { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }

        public string ContactDisplay()
        {
            //Customer selectedCustomer;
            //selectedCustomer = (Customer)System.Web.HttpContext.Current.Session["Contact"];
            return //selectedCustomer.
            Name + ":" + //selectedCustomer.
            Phone + ", " + //selectedCustomer.
            Email;
        }
    }
}