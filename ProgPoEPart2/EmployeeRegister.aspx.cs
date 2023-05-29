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
    public partial class EmployeeRegister : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtEmployeeName.Text != "" && txtEmployeePassword.Text != "") {
                if (txtEmployeePassword.Text.Equals(txtConfirm.Text))
                {
                    using (con = new SqlConnection(cs))
                    {
                        con.Open();
                        cmd = new SqlCommand("INSERT INTO Employee VALUES (@EmpployeeName, @EmployeePassword)", con);
                        cmd.Parameters.AddWithValue("@EmpployeeName", txtEmployeeName.Text);
                        cmd.Parameters.AddWithValue("@EmployeePassword", txtEmployeePassword.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    Response.Redirect("EmployeeLoggedInHomePage.aspx");
                }
                else {
                    lblError.Text = "*Passwords do not match*";
                    lblError.ForeColor = System.Drawing.Color.Red;
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