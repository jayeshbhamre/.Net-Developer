using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ASPExportImport
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            string connstr = @"Data Source=jayeshbhamre\sqlexpress;Initial Catalog=AspCrud;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(connstr);
            sqlconn.Open();
            string query = "Select * from Student Where StudentID = '" + Txt_Search.Text+"'";
            SqlCommand sqlcmd = new SqlCommand(query,sqlconn);
            SqlDataReader sqldr = sqlcmd.ExecuteReader();
            bool RecordFound = sqldr.Read();
            if (!RecordFound)
            {
                Label2.Text = "<font color='Red'> Record Does Not Exist...!</font>";
            }
            else {
                Label2.Text = "";
                StudentResult.Visible = true;
                Label4.Text = sqldr["StudentID"].ToString();
                Label6.Text = sqldr["StudentName"].ToString();
                Label8.Text = sqldr["StudentCity"].ToString();
                Label10.Text = sqldr["StudentAge"].ToString();
            }
            sqlconn.Close();
        }
    }
}