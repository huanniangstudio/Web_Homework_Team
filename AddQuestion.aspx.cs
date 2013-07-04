using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Collections;
namespace WebApplication1
{
    public partial class AddQuestion : System.Web.UI.Page
    {
        protected ArrayList myArray = new ArrayList();
        protected void Page_Load(object sender, EventArgs e)
        {
            myArray.Add("作业相关");
            myArray.Add("上课相关");
            myArray.Add("其他");
            DropDownList1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString.ToString());
            connection.Open();
            string sqlstr = "insert into Question(Questioner,Title,AddTime,Categories,Contents) values(";
            string _questioner = "Saisa";
            string _title = r_title.Text;
            string _addTime = DateTime.Now.ToString();
            string _categories = DropDownList1.Text;
            string _contents = r_content.Value;

            if (_title == "" || _contents == "")
            {
                Response.Write("<div align=center><li>昵称,标题,内容不能为空!</li>");
                Response.End();
            }
            sqlstr = sqlstr  + "'" + _questioner + "'," + "'" + _title + "'," + "'" + _addTime + "',"  + "'" + _categories + "'," + "'" + _contents + "'" + ")";
            SqlCommand com = new SqlCommand(sqlstr, connection);
            com.ExecuteNonQuery();
            Response.Redirect("ShowQuestionList.aspx");
        }

        protected void r_title_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}