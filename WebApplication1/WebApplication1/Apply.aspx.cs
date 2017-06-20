using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != null && TextBox2.Text != null && TextBox5.Text != null && TextBox6.Text != null)
            {
                SqlDataSource1.Insert();
               
            }
        }
        
    }
}