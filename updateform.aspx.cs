using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlTypes;
using System.Data.Sql;
using System.Data;
using System.Text.RegularExpressions;

namespace stephanos_School.web_Pages
{
    public partial class updateform : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        public event SqlInfoMessageEventHandler infoMessage;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("dbo.get_student_by_id");
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", Convert.ToInt32(txtSearch.Text));
                con.Open();
                cmd.Connection = con;
                using (SqlDataReader binder = cmd.ExecuteReader())
                { 
                        while (binder.Read())
                      {
                               txtstudentId.Text=(binder["STUDENT_ID"].ToString());
                               txtstudentId.Enabled = false;
                               txtfirstName.Text=(binder["STUDENT_FIRST_NAME"].ToString());
                               txtfirstName.Enabled = false;
                               txtlastName.Text=(binder["STUDENT_LAST_NAME"].ToString());
                               txtlastName.Enabled = false;
                               txtmobileNumber.Text=(binder["STUDENT_MOBILE_NUMBER"].ToString());
                               txtmobileNumber.Enabled = false;
                               txtEmail.Text=(binder["STUDENT_EMAIL"].ToString());
                               txtEmail.Enabled = false;
                               ddGender.Text=(binder["STUDENT_GENDER"].ToString());
                               ddGender.Enabled = false;
                               txtDOB.Text=(binder["STUDENT_DATE_OF_BIRTH"].ToString());
                               txtDOB.Enabled = false;
                               ddClass.SelectedValue=(binder["STUDNET_CLASS_ID"].ToString());
                               txthouseNumber.Text=(binder["STUDENT_HOUSE_NUMBER"].ToString());
                               txthouseNumber.Enabled = false;
                               txtstreetName.Text=(binder["STUDENT_STREET_NAME"].ToString());
                               txtstreetName.Enabled = false;
                               txtCountry.Text=(binder["STUDENT_COUNTRY"].ToString());
                               txtCountry.Enabled = false;
                               txtDOJ.Text=(binder["STUDENT_DATE_OF_JOINING"].ToString());
                               txtDOJ.Enabled = false;
                               
                       }
                   }
                }
            }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using(SqlConnection con1 = new SqlConnection(CS))
            {
                SqlCommand cmd1 = new SqlCommand("updatestudentrankdetails", con1);
                cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                cmd1.Parameters.AddWithValue("@studentid", txtstudentId.Text);
                cmd1.Parameters.AddWithValue("@classid", Convert.ToInt32(ddClass.SelectedValue));
                cmd1.Parameters.AddWithValue("@rankid", Convert.ToInt32(ddbelt.SelectedValue));
                cmd1.Parameters.AddWithValue("@currentrankdate", DateTime.Now);
                SqlParameter sqlParam = cmd1.Parameters.Add("@ReturnValue", SqlDbType.Int);
                sqlParam.Direction = ParameterDirection.ReturnValue;
                con1.Open();
                cmd1.ExecuteNonQuery();
                int returnvalue = (int)cmd1.Parameters["@ReturnValue"].Value;
                if (returnvalue == 1)
                {
                    string alert = "Student is Not eligible to perform this belt";
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + alert + "')</SCRIPT>");
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "MessageBox", "alert(Student is not eligible to perform thi operation)", true);
                }
                else if (returnvalue == 2)
                {
                    string alert = "SStudent Record is already updated on this belt";
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + alert + "')</SCRIPT>");
                    
                }
                else
                {
                    string alert = "Student Record is updated successfully";
                    System.Web.HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + alert + "')</SCRIPT>");
                }
            }
        }

        }

       
    }
