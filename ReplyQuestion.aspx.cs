using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.Common;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class ReplyQuestion : System.Web.UI.Page
    {
        protected ArrayList myArray = new ArrayList();
        protected string myid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            myArray.Add("1");
            myArray.Add("2");
            myArray.Add("3");
            myArray.Add("4");
            myArray.Add("5");
            DropDownList1.DataBind();
            string id = Request.QueryString["ID"].ToString();
            myid = id;
            SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString.ToString());
            connection.Open();
            SqlCommand myCommand = new SqlCommand("select * from Question", connection);
            SqlDataReader myReader = myCommand.ExecuteReader();
            string a = "";
            while (myReader.Read())
            {
                if (myReader[0].ToString() == id)
                {
                    r_title0.Text = myReader["Title"].ToString();
                    r_content0.InnerText = myReader["Contents"].ToString();
                    r_content.InnerText = myReader["ReplyContents"].ToString();
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString.ToString());
            connection.Open();
            string sqlstr = "update Question set ";
            string _replyContents = r_content.Value;
            string _importance = "4";// DropDownList1.Text;
            string _replyTime = DateTime.Now.ToString();



            sqlstr = sqlstr + "ReplyContents='" + _replyContents + "'," + "Importance='" + _importance + "'," + "ReplyTime='" + _replyTime + "'where ID='"+myid+"'";
            SqlCommand com = new SqlCommand(sqlstr, connection);
            com.ExecuteNonQuery();
            Response.Redirect("ReplyQuestionList.aspx");
        }

    }
}