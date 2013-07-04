using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ShowQuestion : System.Web.UI.Page
    {
        protected string mytag = "huan";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["user"] = mytag;
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddQuestion.aspx");
          

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }


    }
}