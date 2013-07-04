using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        public string Name = "教学答疑系统";
        public DateTime LoginTime = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}