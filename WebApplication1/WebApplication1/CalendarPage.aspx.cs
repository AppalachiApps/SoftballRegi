using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected string GetDayData(string day)
        {
            string month;
            
            if (DropDownList2.Text == "April")
            {
                month = "04";
            }
            else if (DropDownList2.Text == "May")
            {
                month = "05";
            }
            else if (DropDownList2.Text == "June")
            {
                month = "06";
            }
            else
            {
                month = "";
            }
            string year = "2017";
            string r;
            string s;
            string fr;
            string query1 = ("SELECT[time] FROM[Calendar] WHERE(TeamName = '" + DropDownList1.SelectedItem.Text + "') AND [date] = '" + year + "-" + month + "-" + day + "';");
            string query2 = ("Select[location] from [Calendar] WHERE (TeamName = '" + DropDownList1.SelectedItem.Text + "') AND [date] = '" + year + "-" + month + "-" + day + "';");
            SqlConnection c1 = new SqlConnection();
            c1.ConnectionString = "Data Source=softballregi.database.windows.net;Initial Catalog=Softball;User ID=mssaadmin; Password=TerryHorne123";
            SqlCommand s1 = new SqlCommand(query1, c1);
            c1.Open();
            SqlDataReader s1d1 = s1.ExecuteReader();
            SqlConnection c2 = new SqlConnection();
            c2.ConnectionString = "Data Source=softballregi.database.windows.net;Initial Catalog=Softball;User ID=mssaadmin; Password=TerryHorne123";
            c2.Open();
            SqlCommand s2 = new SqlCommand(query2, c2);
            SqlDataReader s2d1 = s2.ExecuteReader();
            s1d1.Read();
            s2d1.Read();
            r = s1d1[0].ToString();
            s = s2d1[0].ToString();            
            fr = String.Format("{0}" + "\n" + "{1}", r, s);
            return fr;
            c1.Close();
            c2.Close();
        }

        protected void Populate_Calendar()
        {
            int month;
            
            if (DropDownList2.Text == "April")
            {
                month = 04;
            }
            else if (DropDownList2.Text == "May")
            {
                month = 05;
            }
            else if (DropDownList2.Text == "June")
            {
                month = 06;
            }
            
            else
            {
                month = 0;
            }
            if (month >= 12 || month <= 1)
            {
            }
            else
            {
                if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12)
                {
                    //T
                    //TableRow r1 = new TableRow();
                    //TableRow r2 = new TableRow();
                    //TableRow r3 = new TableRow();
                    //TableRow r4 = new TableRow();
                    //TableRow r5 = new TableRow();
                    //Table1.Rows.Add(r1);
                    //Table1.Rows.Add(r2);
                    //Table1.Rows.Add(r3);
                    //Table1.Rows.Add(r4);
                    //Table1.Rows.Add(r5);
                    //TableCell r1c1 = new TableCell();
                    //TableCell r1c2 = new TableCell();
                    //TableCell r1c3 = new TableCell();
                    //TableCell r1c4 = new TableCell();
                    //TableCell r1c5 = new TableCell();
                    //TableCell r1c6 = new TableCell();
                    //TableCell r1c7 = new TableCell();
                    //TableCell r2c1 = new TableCell();
                    //TableCell r2c2 = new TableCell();
                    //TableCell r2c3 = new TableCell();
                    //TableCell r2c4 = new TableCell();
                    //TableCell r2c5 = new TableCell();
                    //TableCell r2c6 = new TableCell();
                    //TableCell r2c7 = new TableCell();
                    //TableCell r3c1 = new TableCell();
                    //TableCell r3c2 = new TableCell();
                    //TableCell r3c3 = new TableCell();
                    //TableCell r3c4 = new TableCell();
                    //TableCell r3c5 = new TableCell();
                    //TableCell r3c6 = new TableCell();
                    //TableCell r3c7 = new TableCell();
                    //TableCell r4c1 = new TableCell();
                    //TableCell r4c2 = new TableCell();
                    //TableCell r4c3 = new TableCell();
                    //TableCell r4c4 = new TableCell();
                    //TableCell r4c5 = new TableCell();
                    //TableCell r4c6 = new TableCell();
                    //TableCell r4c7 = new TableCell();
                    //TableCell r5c1 = new TableCell();
                    //TableCell r5c2 = new TableCell();
                    //TableCell r5c3 = new TableCell();
                    //r1.Cells.Add(r1c1);
                    r1c1.Text = String.Format("{0}" + "\n" + "\n" + "{1}", "1", GetDayData("01"));
                    //r1.Cells.Add(r1c2);
                    r1c2.Text = "2";
                    //r1.Cells.Add(r1c3);
                    r1c3.Text = "3";
                    //r1.Cells.Add(r1c4);
                    r1c4.Text = "4";
                    //r1.Cells.Add(r1c5);
                    r1c5.Text = "5";
                    //r1.Cells.Add(r1c6);
                    r1c6.Text = "6";
                    //r1.Cells.Add(r1c7);
                    r1c7.Text = "7";
                    //r2.Cells.Add(r2c1);
                    r2c1.Text = String.Format("{0}" + "\n" + "\n" + "{1}", "8", GetDayData("08"));
                    //r2.Cells.Add(r2c2);
                    r2c2.Text = "9";
                    //r2.Cells.Add(r2c3);
                    r2c3.Text = "10";
                    //r2.Cells.Add(r2c4);
                    r2c4.Text = "11";
                    //r2.Cells.Add(r2c5);
                    r2c5.Text = "12";
                    //r2.Cells.Add(r2c6);
                    r2c6.Text = "13";
                    //r2.Cells.Add(r2c7);
                    r2c7.Text = "14";
                    //r3.Cells.Add(r3c1);
                    r3c1.Text = String.Format("{0}" + "\n" + "\n" + "{1}", "15", GetDayData("15"));
                    //r3.Cells.Add(r3c2);
                    r3c2.Text = "16";
                    //r3.Cells.Add(r3c3);
                    r3c3.Text = "17";
                    //r3.Cells.Add(r3c4);
                    r3c4.Text = "18";
                    //r3.Cells.Add(r3c5);
                    r3c5.Text = "19";
                    //r3.Cells.Add(r3c6);
                    r3c6.Text = "20";
                    //r3.Cells.Add(r3c7);
                    r3c7.Text = "21";
                    //r4.Cells.Add(r4c1);
                    r4c1.Text = String.Format("{0}" + "\n" + "\n" + "{1}", "22", GetDayData("22"));
                    //r4.Cells.Add(r4c2);
                    r4c2.Text = "23";
                    //r4.Cells.Add(r4c3);
                    r4c3.Text = "24";
                    //r4.Cells.Add(r4c4);
                    r4c4.Text = "25";
                    //r4.Cells.Add(r4c5);
                    r4c5.Text = "26";
                    //r4.Cells.Add(r4c6);
                    r4c6.Text = "27";
                    //r4.Cells.Add(r4c7);
                    r4c7.Text = "28";
                    //r5.Cells.Add(r5c1);
                    r5c1.Text = String.Format("{0}" + "\n" + "\n" + "{1}", "29", GetDayData("29"));
                    //r5.Cells.Add(r5c2);
                    r5c2.Text = "30";
                    //r5.Cells.Add(r5c3);
                    r5c3.Text = "31";
                    Table1.Visible = true;
                }
                else if (month == 4 || month == 6 || month == 9 || month == 11)
                {
                    //TableRow r1 = new TableRow();
                    //TableRow r2 = new TableRow();
                    //TableRow r3 = new TableRow();
                    //TableRow r4 = new TableRow();
                    //TableRow r5 = new TableRow();
                    //Table1.Rows.Add(r1);
                    //Table1.Rows.Add(r2);
                    //Table1.Rows.Add(r3);
                    //Table1.Rows.Add(r4);
                    //Table1.Rows.Add(r5);
                    //TableCell r1c1 = new TableCell();
                    //TableCell r1c2 = new TableCell();
                    //TableCell r1c3 = new TableCell();
                    //TableCell r1c4 = new TableCell();
                    //TableCell r1c5 = new TableCell();
                    //TableCell r1c6 = new TableCell();
                    //TableCell r1c7 = new TableCell();
                    //TableCell r2c1 = new TableCell();
                    //TableCell r2c2 = new TableCell();
                    //TableCell r2c3 = new TableCell();
                    //TableCell r2c4 = new TableCell();
                    //TableCell r2c5 = new TableCell();
                    //TableCell r2c6 = new TableCell();
                    //TableCell r2c7 = new TableCell();
                    //TableCell r3c1 = new TableCell();
                    //TableCell r3c2 = new TableCell();
                    //TableCell r3c3 = new TableCell();
                    //TableCell r3c4 = new TableCell();
                    //TableCell r3c5 = new TableCell();
                    //TableCell r3c6 = new TableCell();
                    //TableCell r3c7 = new TableCell();
                    //TableCell r4c1 = new TableCell();
                    //TableCell r4c2 = new TableCell();
                    //TableCell r4c3 = new TableCell();
                    //TableCell r4c4 = new TableCell();
                    //TableCell r4c5 = new TableCell();
                    //TableCell r4c6 = new TableCell();
                    //TableCell r4c7 = new TableCell();
                    //TableCell r5c1 = new TableCell();
                    //TableCell r5c2 = new TableCell();
                    //r1.Cells.Add(r1c1);
                    r1c1.Text = String.Format("{0}" + "\n" + "{1}", "1", GetDayData("01"));
                    //r1.Cells.Add(r1c2);
                    r1c2.Text = "2";
                    //r1.Cells.Add(r1c3);
                    r1c3.Text = "3";
                    //r1.Cells.Add(r1c4);
                    r1c4.Text = "4";
                    //r1.Cells.Add(r1c5);
                    r1c5.Text = "5";
                    //r1.Cells.Add(r1c6);
                    r1c6.Text = "6";
                    //r1.Cells.Add(r1c7);
                    r1c7.Text = "7";
                    //r2.Cells.Add(r2c1);
                    r2c1.Text = String.Format("{0}" + "\n" + "{1}", "8", GetDayData("08"));
                    //r2.Cells.Add(r2c2);
                    r2c2.Text = "9";
                    //r2.Cells.Add(r2c3);
                    r2c3.Text = "10";
                    //r2.Cells.Add(r2c4);
                    r2c4.Text = "11";
                    //r2.Cells.Add(r2c5);
                    r2c5.Text = "12";
                    //r2.Cells.Add(r2c6);
                    r2c6.Text = "13";
                    //r2.Cells.Add(r2c7);
                    r2c7.Text = "14";
                    //r3.Cells.Add(r3c1);
                    r3c1.Text = String.Format("{0}" + "\n" + "{1}", "15", GetDayData("15"));
                    //r3.Cells.Add(r3c2);
                    r3c2.Text = "16";
                    //r3.Cells.Add(r3c3);
                    r3c3.Text = "17";
                    //r3.Cells.Add(r3c4);
                    r3c4.Text = "18";
                    //r3.Cells.Add(r3c5);
                    r3c5.Text = "19";
                    //r3.Cells.Add(r3c6);
                    r3c6.Text = "20";
                    //r3.Cells.Add(r3c7);
                    r3c7.Text = "21";
                    //r4.Cells.Add(r4c1);
                    r4c1.Text = String.Format("{0}" + "\n" + "{1}", "22", GetDayData("22"));
                    //r4.Cells.Add(r4c2);
                    r4c2.Text = "23";
                    //r4.Cells.Add(r4c3);
                    r4c3.Text = "24";
                    //r4.Cells.Add(r4c4);
                    r4c4.Text = "25";
                    //r4.Cells.Add(r4c5);
                    r4c5.Text = "26";
                    //r4.Cells.Add(r4c6);
                    r4c6.Text = "27";
                    //r4.Cells.Add(r4c7);
                    r4c7.Text = "28";
                    //r5.Cells.Add(r5c1);
                    r5c1.Text = String.Format("{0}" + "\n" + "{1}", "29", GetDayData("29"));
                    //r5.Cells.Add(r5c2);
                    r5c2.Text = "30";
                }
                else if (month == 2)
                {
                    //TableRow r1 = new TableRow();
                    //TableRow r2 = new TableRow();
                    //TableRow r3 = new TableRow();
                    //TableRow r4 = new TableRow();
                    //TableRow r5 = new TableRow();
                    //Table1.Rows.Add(r1);
                    //Table1.Rows.Add(r2);
                    //Table1.Rows.Add(r3);
                    //Table1.Rows.Add(r4);
                    //Table1.Rows.Add(r5);
                    //TableCell r1c1 = new TableCell();
                    //TableCell r1c2 = new TableCell();
                    //TableCell r1c3 = new TableCell();
                    //TableCell r1c4 = new TableCell();
                    //TableCell r1c5 = new TableCell();
                    //TableCell r1c6 = new TableCell();
                    //TableCell r1c7 = new TableCell();
                    //TableCell r2c1 = new TableCell();
                    //TableCell r2c2 = new TableCell();
                    //TableCell r2c3 = new TableCell();
                    //TableCell r2c4 = new TableCell();
                    //TableCell r2c5 = new TableCell();
                    //TableCell r2c6 = new TableCell();
                    //TableCell r2c7 = new TableCell();
                    //TableCell r3c1 = new TableCell();
                    //TableCell r3c2 = new TableCell();
                    //TableCell r3c3 = new TableCell();
                    //TableCell r3c4 = new TableCell();
                    //TableCell r3c5 = new TableCell();
                    //TableCell r3c6 = new TableCell();
                    //TableCell r3c7 = new TableCell();
                    //TableCell r4c1 = new TableCell();
                    //TableCell r4c2 = new TableCell();
                    //TableCell r4c3 = new TableCell();
                    //TableCell r4c4 = new TableCell();
                    //TableCell r4c5 = new TableCell();
                    //TableCell r4c6 = new TableCell();
                    //TableCell r4c7 = new TableCell();
                    //r1.Cells.Add(r1c1);
                    r1c1.Text = String.Format("{0}" + "\n" + "{1}", "1", GetDayData("01"));
                    //r1.Cells.Add(r1c2);
                    r1c2.Text = "2";
                    //r1.Cells.Add(r1c3);
                    r1c3.Text = "3";
                    //r1.Cells.Add(r1c4);
                    r1c4.Text = "4";
                    //r1.Cells.Add(r1c5);
                    r1c5.Text = "5";
                    //r1.Cells.Add(r1c6);
                    r1c6.Text = "6";
                    //r1.Cells.Add(r1c7);
                    r1c7.Text = "7";
                    //r2.Cells.Add(r2c1);
                    r2c1.Text = String.Format("{0}" + "\n" + "{1}", "8", GetDayData("08"));
                    //r2.Cells.Add(r2c2);
                    r2c2.Text = "9";
                    //r2.Cells.Add(r2c3);
                    r2c3.Text = "10";
                    //r2.Cells.Add(r2c4);
                    r2c4.Text = "11";
                    //r2.Cells.Add(r2c5);
                    r2c5.Text = "12";
                    //r2.Cells.Add(r2c6);
                    r2c6.Text = "13";
                    //r2.Cells.Add(r2c7);
                    r2c7.Text = "14";
                    //r3.Cells.Add(r3c1);
                    r3c1.Text = String.Format("{0}" + "\n" + "{1}", "15", GetDayData("15"));
                    //r3.Cells.Add(r3c2);
                    r3c2.Text = "16";
                    //r3.Cells.Add(r3c3);
                    r3c3.Text = "17";
                    //r3.Cells.Add(r3c4);
                    r3c4.Text = "18";
                    //r3.Cells.Add(r3c5);
                    r3c5.Text = "19";
                    //r3.Cells.Add(r3c6);
                    r3c6.Text = "20";
                    //r3.Cells.Add(r3c7);
                    r3c7.Text = "21";
                    //r4.Cells.Add(r4c1);
                    r4c1.Text = String.Format("{0}" + "\n" + "{1}", "22", GetDayData("22"));
                    //r4.Cells.Add(r4c2);
                    r4c2.Text = "23";
                    //r4.Cells.Add(r4c3);
                    r4c3.Text = "24";
                    //r4.Cells.Add(r4c4);
                    r4c4.Text = "25";
                    //r4.Cells.Add(r4c5);
                    r4c5.Text = "26";
                    //r4.Cells.Add(r4c6);
                    r4c6.Text = "27";
                    //r4.Cells.Add(r4c7);
                    r4c7.Text = "28";
                }
                else { }
                }
            }
        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Populate_Calendar();
            CalendarLabel.Text = DropDownList2.Text;
            CalendarLabel.Visible = true;
        }
    }
        }
    


        
    
    
