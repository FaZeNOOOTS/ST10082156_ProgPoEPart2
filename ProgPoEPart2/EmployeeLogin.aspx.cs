using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ProgPoEPart2
{
    public partial class EmployeeLogin : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtEmployeeName.Text != "" && txtEmployeePassword.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("SELECT COUNT(1) FROM Employee WHERE EmployeeName = @Employeename AND EmployeePassword = @Employeepassword", con);
                    cmd.Parameters.AddWithValue("@Employeename", txtEmployeeName.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmployeePassword", txtEmployeePassword.Text.Trim());
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count == 1)
                    {
                        Session["EmployeeName"] = txtEmployeeName.Text.Trim();
                        Response.Redirect("EmployeeLoggedInHomePage.aspx");
                    }
                    else
                    {
                        lblError.Text = "*Incorrect Credentials.*";
                        lblError.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            else
            {
                lblError.Text = "*Please fill in all information*";
                lblError.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}