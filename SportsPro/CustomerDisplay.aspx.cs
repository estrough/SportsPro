using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportsPro.Models;
using System.Data;

namespace SportsPro
{
    public partial class CustomerDisplay : System.Web.UI.Page
    {
        private Customer selectedCutsomer;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) ddlCustomer.DataBind();
            selectedCutsomer = this.GetSelectedCustomer();
            lblStreet.Text = selectedCutsomer.Address;
            lblCityState.Text = selectedCutsomer.City;
            lblState.Text = selectedCutsomer.State;
            lblZip.Text = selectedCutsomer.ZipCode;
            lblPhone.Text = selectedCutsomer.Phone;
            lblEmail.Text = selectedCutsomer.Email;
        }

        private Customer GetSelectedCustomer()
        {
            DataView customerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            customerTable.RowFilter = string.Format("CustomerID = '{0}'", ddlCustomer.SelectedValue);
            DataRowView row = customerTable[0];

            Customer c = new Customer();
            c.CustomerID = row["CustomerID"].ToString();
            c.Name = row["Name"].ToString();
            c.Address = row["Address"].ToString();
            c.City = row["City"].ToString();
            c.State = row["State"].ToString();
            c.ZipCode = row["ZipCode"].ToString();
            c.Phone = row["Phone"].ToString();
            c.Email = row["Email"].ToString();
            return c;

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {

                CustomerList cList = CustomerList.GetCustomers();
                Customer custItem = cList[selectedCutsomer.CustomerID];

                if (cList == null)
                {
                    cList.AddItem(selectedCutsomer);
                }

            }
            Response.Redirect("~/ContactDisplay.aspx");

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ContactDisplay.aspx");
        }
    }
}