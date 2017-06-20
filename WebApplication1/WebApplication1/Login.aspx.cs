using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query1 = "SELECT COUNT(1) FROM [Member] WHERE (([Username] = '"+TextBox1.Text.Trim()+"') AND ([Password] = '"+TextBox2.Text.Trim()+"'))";
            SqlConnection c1 = new SqlConnection();
            c1.ConnectionString = "Data Source=softballregi.database.windows.net;Initial Catalog=Softball;User ID=mssaadmin; Password=TerryHorne123";
            SqlCommand s1 = new SqlCommand(query1, c1);
            c1.Open();
            int count = Convert.ToInt32(s1.ExecuteScalar());
            if(count == 1)
                {
                    Session.Add("Username", TextBox1.Text);
                    Session.Add("Password", TextBox2.Text);
                    Response.Redirect("UserHome.aspx");
                }
            else
            {
                Label3.Visible = true;
            }

        }
    }
}
