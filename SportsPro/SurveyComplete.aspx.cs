using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SportsPro
{
    public partial class SurveyComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((bool)(Session["contactMethod"]))
            {
                lblResponse.Visible = true;
            }
            else
            {
                lblResponse.Visible = false;
            }
        }

        protected void btnRetSurvey_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CustomerSurvey.aspx");
        }
    }
}