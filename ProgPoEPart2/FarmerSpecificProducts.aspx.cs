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
    public partial class FarmerSpecificProducts : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;
        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                GridView1.DataBind();
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
            if (Session["FarmerName"] == null || string.IsNullOrEmpty(Session["FarmerName"].ToString()))
            {
                Response.Redirect("Default.aspx");
            }
            else 
            {
                //string FN = Session["FarmerName"].ToString().Trim();           
                    using (con = new SqlConnection(cs))
                {                      
                        cmd = new SqlCommand("SELECT F.FarmerName, P.ProductName, FP.Amount, FP.DateDelivered From FarmerProduct FP, Farmer F, Products P WHERE P.ProductID = FP.ProductID AND F.FarmerName = '@FarmerName'", con);
                        cmd.Parameters.AddWithValue("@FarmerName", Session["FarmerName"]);
                        adapter = new SqlDataAdapter(cmd);
                        dt = new DataTable("Search");
                        adapter.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }               
                }
                
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