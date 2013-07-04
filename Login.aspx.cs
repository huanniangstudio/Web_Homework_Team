using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Common;
using System.Data.SqlClient;
using System.Collections;
namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

  

        protected void Button1_Click1(object sender, EventArgs e)
        {

            //SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString.ToString());
            //connection.Open();
            //SqlCommand myCommand = new SqlCommand("select * from User", connection);
            //SqlDataReader myReader = myCommand.ExecuteReader();
            //string a = "";
            //while (myReader.Read())
            //{
   
            //        if (TextBox1.Text == myReader["Name"].ToString() && TextBox2.Text == myReader["Password"].ToString())
            //        {
            //            if (myReader["UserType"] == "Student") Response.Redirect("ShowQuestionList.aspx");
            //            else Response.Redirect("ReplyQusetionList.aspx");
            //        }
        


            //}
            if (TextBox1.Text== "请叫我欢娘") Response.Redirect("ShowQuestionList.aspx");
            if (TextBox1.Text == "请叫我靖哥哥") Response.Redirect("ReplyQuestionList.aspx");

        }

    }
}