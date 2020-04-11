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
    public partial class Save : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clear_Data();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connstr = @"Data Source=jayeshbhamre\sqlexpress;Initial Catalog=AspCrud;Integrated Security=True";
            SqlConnection sqlconn = new SqlConnection(connstr);
            sqlconn.Open();

            string Query = "Insert into Student Values('"+txt_Studen_Id.Text+"','"+txt_Student_Name.Text+ "','"+txt_Student_City.Text+ "','"+txt_Student_Age.Text+"')";

            SqlCommand sqlcmd = new SqlCommand(Query, sqlconn);

            int i = sqlcmd.ExecuteNonQuery();

            if (i > 0)
            {
                Label5.Text = "Record Inserted...";
                //Clear_Data();
            }
            else
            {
                Label5.Text = "Record Not Inserted...!";
            }
          
        }
        //public void Clear_Data()
        //{
        //    txt_Studen_Id.Text = txt_Student_Name.Text = txt_Student_City.Text = txt_Student_Age.Text = "";
        //    Label5.Text = "";
        //}
    }
}