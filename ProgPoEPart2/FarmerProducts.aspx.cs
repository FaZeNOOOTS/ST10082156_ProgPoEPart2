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
    public partial class FarmerProducts : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad() 
        {
            if (Page.IsPostBack) {
                FarmerView.DataBind();
            }
        }

        public void ClearData() 
        {
            txtName.Text = "";
            ddlProduct.SelectedValue = ddlProduct.Items[0].ToString();
            txtAmt.Text = "";
            txtDD.Text = "";
            lblError.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["EmployeeName"] == null || string.IsNullOrEmpty(Session["EmployeeName"].ToString()))
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtName.Text = FarmerView.SelectedRow.Cells[2].Text;
            ddlProduct.Text = FarmerView.SelectedRow.Cells[3].Text;
            txtAmt.Text = FarmerView.SelectedRow.Cells[4].Text;
            txtDD.Text = FarmerView.SelectedRow.Cells[5].Text;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtAmt.Text != "" && ddlProduct.SelectedIndex != 0 && txtDD.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("INSERT INTO FarmerProduct (FarmerID, ProductID, Amount, DateDelivered) VALUES (@name, @productID, @amount, @datedelivered)", con);
                    cmd.Parameters.AddWithValue("@name", txtName.Text);
                    /*switch (ddlProduct.SelectedIndex)
                    {
                        case "Fruit":
                            cmd.Parameters.AddWithValue("@productID", 901);
                            break;
                        case "Vegetables":
                            cmd.Parameters.AddWithValue("@productID", 902);
                            break;
                        case "Milk":
                            cmd.Parameters.AddWithValue("@productID", 903);
                            break;
                        case "Meat":
                            cmd.Parameters.AddWithValue("@productID", 904);
                            break;
                        case "Alcohol":
                            cmd.Parameters.AddWithValue("@productID", 905);
                            break;
                        case "Tobacco":
                            cmd.Parameters.AddWithValue("@productID", 906);
                            break;
                        default:
                            lblError.Text = "Incorrect information has been inserted. Please try again";
                            break;
                    }*/
                    cmd.Parameters.AddWithValue("@productID", ddlProduct.SelectedIndex);
                    cmd.Parameters.AddWithValue("@amount", txtAmt.Text);
                    cmd.Parameters.AddWithValue("@datedelivered", txtDD.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearData();
                }
            }
            else { lblError.Text = "Please fill all information."; }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtName.Text != "" && txtAmt.Text != "" && ddlProduct.SelectedIndex != 0 && txtDD.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("DELETE FROM FarmerProduct WHERE FarmerID=@farmerid AND ProductID=@productid AND Amount=@amount AND DateDelivered =@datedelivered", con);
                    cmd.Parameters.AddWithValue("@farmerid", txtName.Text);
                    cmd.Parameters.AddWithValue("@productid", ddlProduct.SelectedIndex);
                    cmd.Parameters.AddWithValue("@amount", txtAmt.Text);
                    cmd.Parameters.AddWithValue("datedelivered", txtDD.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearData();
                }
            }
            else { lblError.Text = "Please fill all information."; }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            ClearData();
        }
    }
}