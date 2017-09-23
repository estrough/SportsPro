using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportsPro.Models;
using System.Collections;

namespace SportsPro
{
    public partial class ContactDisplay : System.Web.UI.Page
    {
        private CustomerList display;


        protected void Page_Load(object sender, EventArgs e)
        {
            display = CustomerList.GetCustomers();
            if (!IsPostBack) this.DisplayCustomer();
        }

        protected void DisplayCustomer()
        {
            

            lstCustomers.Items.Clear();
            Customer customer;

            for (int i = 0; i < display.Count; i++)
            {
                
                customer = display[i];
                lstCustomers.Items.Add(display[i].ContactDisplay());
            }
        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (display.Count > 0)
            {
                if (lstCustomers.SelectedIndex > -1 && display.Count > 0)
                {
                    
                    display.RemoveAt(lstCustomers.SelectedIndex);
                    this.DisplayCustomer();
                }
            }
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            if (display.Count > 0)
            {
                display.Clear();
                lstCustomers.Items.Clear();
            }
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerDisplay.aspx");
        }
    }
}