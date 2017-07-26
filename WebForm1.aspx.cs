using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Globalization;

namespace stephanos_School.web_Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        public int sai =0;

        protected void Page_Load(object sender, EventArgs e)
        {
           ttparentDetails.Visible = false;
           txtDOJ.Text = Convert.ToString(DateTime.Now);
           txtDOJ.Enabled = false;
          
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            
        }

        public string reset(){
            txtstudentId.Text="";
            txtfirstName.Text="";
            txtlastName.Text = "";
            txtEmail.Text = "";
            txtDOB.Text = "";
            txtmobileNumber.Text = "";
            txtDOJ.Text = "";
            txthouseNumber.Text = "";
            txtstreetName.Text = "";
            txtCountry.Text = "";
            return null;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
          string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
          if (sai == 1)
          {
              using (SqlConnection con1 = new SqlConnection(CS))
              {

                  SqlCommand cmd1 = new SqlCommand("dbo.insert_student_family", con1);
                  cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                  cmd1.Parameters.AddWithValue("@stu_id", Convert.ToInt32(txtstudentId.Text));
                  cmd1.Parameters.AddWithValue("@fatherfirstname", txt_Father_Name.Text);
                  cmd1.Parameters.AddWithValue("@fatherlastname", txt_Father_Last_Name.Text);
                  cmd1.Parameters.AddWithValue("@motherfirstname", txt_mother_name.Text);
                  cmd1.Parameters.AddWithValue("@motherlastname", txt_mother_last_name.Text);
                  cmd1.Parameters.AddWithValue("@parenthousenumber", txt_parent_house_number.Text);
                  cmd1.Parameters.AddWithValue("@parentstreetname", txt_parent_street_name.Text);
                  cmd1.Parameters.AddWithValue("@parentcountry", txt_parent_country.Text);
                  con1.Open();
                  cmd1.ExecuteNonQuery();
              }
          }
           using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("dbo.sp_insert_student", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@studentId", Convert.ToInt32(txtstudentId.Text));
                cmd.Parameters.AddWithValue("@FirstName", txtfirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtlastName.Text);
                cmd.Parameters.AddWithValue("@mobile_number", txtmobileNumber.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@gender", ddGender.Text);
                cmd.Parameters.AddWithValue("@DOB", DateTime.Now);
                cmd.Parameters.AddWithValue("@classId", Convert.ToInt32(ddClass.SelectedValue));
                cmd.Parameters.AddWithValue("@studenthousenumber", txthouseNumber.Text);
                cmd.Parameters.AddWithValue("@studentstreetname", txtstreetName.Text);
                cmd.Parameters.AddWithValue("@studentcountry", txtCountry.Text);
                cmd.Parameters.AddWithValue("@studentdateofjoining", DateTime.Now);
                cmd.Parameters.AddWithValue("@rankId", Convert.ToInt32(ddbelt.SelectedValue));
                cmd.Parameters.AddWithValue("@status", rdbtnStatus.SelectedValue);
               
                con.Open();
                cmd.ExecuteNonQuery();
            }
            using(SqlConnection con1 = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand("insert_rank_history", con1);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@studentId", txtstudentId.Text);
                cmd1.Parameters.AddWithValue("@rankId", Convert.ToInt32(ddbelt.SelectedValue));
                cmd1.Parameters.AddWithValue("@currentrank_date", DateTime.Now);
                con1.Open();
                cmd1.ExecuteNonQuery();
            }

            string alert = "Student Details Saved Successfully";
            System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + alert + "')</SCRIPT>");
            reset();
        }

        protected void txtDOB_TextChanged(object sender, EventArgs e)
        {
            DateTime timein = DateTime.ParseExact(txtDOB.Text, "mm/dd/yyyy", CultureInfo.InvariantCulture);
            if (DateTime.Now.Year - timein.Year < 18)
            {
                sai = 1;
                ttparentDetails.Visible = true;
            }
        }
    }
}