using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProgPoEPart2
{
    public partial class EmployeeLoggedInHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"] == null || string.IsNullOrEmpty(Session["EmployeeName"].ToString()))
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmerRegister.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("FarmerProducts.aspx");
        }
    }
}