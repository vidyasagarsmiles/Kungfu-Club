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
    public partial class report : System.Web.UI.Page
    {
        string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Enabled = false;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GridView1.Enabled = true;
        }
    }
}