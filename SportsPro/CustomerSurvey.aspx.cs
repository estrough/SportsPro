using SportsPro.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsPro
{
    public partial class CustomerSurvey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetFocus(txtCustId);
            //lstIncidents.Items.Add(new ListItem("Enter a customer ID"));
        }

        protected void btnIncidents_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                int custID = int.Parse(txtCustId.Text);
                lstIncidents.Items.Clear();
                this.getSelectedCustomer();
                if (lstIncidents.Items.Count > 1)
                {
                    this.EnablePage();
                    lstIncidents.SelectedIndex = 1;
                }
            }
        }
        private void EnablePage()
        {
            if (Page.IsValid)
            {
                lstIncidents.Enabled = true;
                radlContact.Enabled = true;
                chkContact.Enabled = true;
                rdlResolution.Enabled = true;
                rdlResponse.Enabled = true;
                rdlTech.Enabled = true;
                txtComment.Enabled = true;
                btnSubmit.Enabled = true;

                
            }
        }
        private void getSelectedCustomer()
        {
            DataView incidentTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            incidentTable.RowFilter = "DateClosed is not NULL AND CustomerID = '" + int.Parse(txtCustId.Text) + "'";
            Incident inc = new Incident();
            int rowIndex = 0;
            lstIncidents.Items.Add(new ListItem("--Select an Incident--", null));
            foreach (DataRowView iRows in incidentTable)
            {
                DataRowView incRow = incidentTable[0];
                inc.CustomerID = (int)iRows["CustomerID"];
                inc.IncidentId = (int)iRows["IncidentID"];
                inc.ProductCode = iRows["ProductCode"].ToString();
                inc.TechID = (int)iRows["TechID"];
                inc.Title = (string)iRows["Title"];
                inc.DateOpened = (DateTime)iRows["DateOpened"];
                inc.DateClosed = (DateTime)iRows["DateClosed"];
                rowIndex = rowIndex + 1;
                lstIncidents.Items.Add(inc.CustomerIncidentDisplay());

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Survey survey = new Survey();
            survey.CustomerID = int.Parse(txtCustId.Text.ToString());
            survey.IncidentID = lstIncidents.SelectedIndex;
            survey.ResponseTime = int.Parse(rdlResponse.SelectedValue);
            survey.TechEfficency = int.Parse(rdlTech.SelectedValue);
            survey.Resolution = int.Parse(rdlResolution.SelectedValue);
            survey.Comments = txtComment.Text;
            bool contactMethod;

            if (chkContact.Checked)
            {
                contactMethod = true;
            }
            else
            {
                contactMethod = false;
            }

            Session.Add("contactMethod", contactMethod);
            Response.Redirect("~/SurveyComplete.aspx");
        }
    }
}