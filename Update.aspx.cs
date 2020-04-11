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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnShow_Click(object sender, EventArgs e)
        {
            string connstr = @"Data Source=jayeshbhamre\sqlexpress;Initial Catalog=AspCrud;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(connstr);
            sqlconn.Open();
            string query = "Select * from Student Where StudentID = '" + Txt_Search.Text + "'";
            SqlCommand sqlcmd = new SqlCommand(query,sqlconn);
            SqlDataReader sqldr = sqlcmd.ExecuteReader();

            bool RecordFound = sqldr.Read();
            if (!RecordFound)
            {
                Label2.Text = "<font color='Red'>Record does not Exist...!</font>";
            }
            else
            {
                Label2.Text = "";
                StudentResult.Visible = true;
                txt_Name.Text = sqldr["StudentName"].ToString();
                txt_City.Text = sqldr["StudentCity"].ToString();
                txt_Age.Text = sqldr["StudentAge"].ToString();
            }
            sqlconn.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string connstr = @"Data Source=jayeshbhamre\sqlexpress;Initial Catalog=AspCrud;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(connstr);
            sqlconn.Open();
            string query = "Update Student Set StudentName = '"+txt_Name.Text+"', StudentCity = '"+txt_City.Text+"', StudentAge = '"+txt_Age.Text+"' where StudentID = '"+Txt_Search.Text+"'";

            SqlCommand sqlcmd = new SqlCommand(query, sqlconn);

            int i = sqlcmd.ExecuteNonQuery();

            if (i > 0)
            {
                Label2.Text = "<font color = 'Blue'>Record Updated...<font/>"; 
            }
            else
            {
                Label2.Text = "<font color = 'Red'>Record Not Updated...!<font/>";
            }
            sqlconn.Close();

        }
    }
}