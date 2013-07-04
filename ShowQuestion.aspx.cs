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
    public partial class ShowQuestion1 : System.Web.UI.Page
    {
  
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"].ToString();
            SqlConnection connection = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["SampleConnectionString"].ConnectionString.ToString());
            connection.Open();
            SqlCommand myCommand = new SqlCommand("select * from Question",connection);
            SqlDataReader myReader = myCommand.ExecuteReader();
            string a = "";
            while (myReader.Read())
            {
                if (myReader[0].ToString() == id)
                {
                    r_title.Text = myReader["Title"].ToString();
                    r_content.InnerText = myReader["Contents"].ToString();
                    r_content0.InnerText = myReader["ReplyContents"].ToString();
                }
                
                
            }
       
           // r_title.Text = a;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowQuestionList.aspx");
        }
    }
}