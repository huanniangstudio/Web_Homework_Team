using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace WebApplication1
{
    public partial class QuestionDetail : System.Web.UI.Page
    {
        public string newsContent = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlData da = new SqlData();
            string sqlString = "select * from tb_News";
            DataSet ds = da.datesetExecute(sqlString, "tbNews");
            DataRow[] row = ds.Tables["tbNews"].Select("id=" + Request.QueryString["id"]);

            foreach (DataRow rs in row)
            {
               // this.labTitle.Text = rs["title"].ToString();
                newsContent = rs["content"].ToString();
            }
        }
        public string GetContent()
        {
            string str = "";
            str = newsContent;
            return str;
        }
    }
}