using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CMH
{
    public partial class first : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var x = TextBox1.Text;
            if (x == "786")
            {
                Response.Redirect("list.aspx");
            }
            else
            {
                Label1.Text = "Invalid Password";
            }
        }
    }
}