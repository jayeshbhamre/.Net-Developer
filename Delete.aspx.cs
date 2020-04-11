using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ASPExportImport
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear_Data();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string connstr = @"Data Source=jayeshbhamre\sqlexpress;Initial Catalog=AspCrud;Integrated Security=True";
            SqlConnection  sqlconn = new SqlConnection(connstr);
            sqlconn.Open();

            string query = "Delete From Student where StudentID = '"+txt_Student_Id.Text+"'";

            SqlCommand sqlcmd = new SqlCommand(query, sqlconn);

            int i = sqlcmd.ExecuteNonQuery();

            if (i > 0)
            {
                Label2.Text = "<font color='Blue'>Record Deleted...</font>";
                
            }
            else
            {
                Label2.Text = "<font color='Red'>Record Not Deleted...!</font>";
            }
          
            sqlconn.Close();
        }
        //public void Clear_Data()
        //{
        //    txt_Student_Id.Text = "";
        //    //Label2.Text = "";
        //}
    }
}