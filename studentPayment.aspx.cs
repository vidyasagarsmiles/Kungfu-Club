using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace stephanos_School.web_Pages
{
    public partial class studentPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public string reset()
        {
            txtstudent.Text = "";
            txtamount.Text = "";
            ddProduct.SelectedValue = "3";
            ddClass.SelectedValue = "603";
            ddPayment.SelectedValue = "cash";
            return null;
        }
        protected void btnPay_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using(SqlConnection con = new SqlConnection(CS))
            {
                
                SqlCommand cmd = new SqlCommand("insert_student_payment_details");
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@studentid", txtstudent.Text);
                cmd.Parameters.AddWithValue("@productid", ddProduct.SelectedValue);
                cmd.Parameters.AddWithValue("@classId", ddClass.SelectedValue);
                cmd.Parameters.AddWithValue("@paymenttype", ddPayment.SelectedValue);
                cmd.Parameters.AddWithValue("@amount", txtamount.Text);
                cmd.Parameters.AddWithValue("@paymentdate", DateTime.Now);

                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                string alert = "Payment Made Successfully";
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + alert + "')</SCRIPT>");
                reset();

            }
        }

        protected void bthReset_Click(object sender, EventArgs e)
        {
            reset();
        }

       
    }
}