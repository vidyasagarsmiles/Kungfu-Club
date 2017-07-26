using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace stephanos_School.web_Pages
{
    public partial class Attendance : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string reset()
        {
            txtstudentid.Text = "";
            ddClass.SelectedValue = "603";
            ddClass.SelectedValue = "Monday";
            radiobutton.SelectedValue = "Yes";
            return null;
        }
        protected void btnReset_Click(object sender, EventArgs e)
        {
            reset();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("insert_student_attendance");
                
                
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@date", DateTime.Now);
                cmd.Parameters.AddWithValue("@studentId", txtstudentid.Text);
                cmd.Parameters.AddWithValue("@classId", Convert.ToInt32(ddClass.SelectedValue));
                cmd.Parameters.AddWithValue("@ispresent", radiobutton.SelectedValue);
                con.Open();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                reset();
                string alert = "Attendance Recorded Successfully";
                System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + alert + "')</SCRIPT>");
            }
        }
    }
}