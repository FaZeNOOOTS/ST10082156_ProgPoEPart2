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
    public partial class FarmerRegister : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"] == null || string.IsNullOrEmpty(Session["EmployeeName"].ToString()))
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtFarmerName.Text != "" && txtFarmerPassword.Text != "")
            {
                if (txtFarmerPassword.Text.Equals(txtConfirm.Text))
                {
                    using (con = new SqlConnection(cs))
                    {
                        con.Open();
                        cmd = new SqlCommand("INSERT INTO Farmer VALUES (@FarmerName, @FarmerPassword)", con);
                        cmd.Parameters.AddWithValue("@FarmerName", txtFarmerName.Text);
                        cmd.Parameters.AddWithValue("@FarmerPassword", txtFarmerPassword.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    Response.Redirect("EmployeeLoggedInHomePage.aspx");
                }
                else
                {
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