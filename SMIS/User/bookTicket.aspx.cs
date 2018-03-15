using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMIS.User
{
    public partial class bookTicket : System.Web.UI.Page
    {
        CommDB mycmd = new CommDB();
        String date = "00/00/00";
        String id = "0";
        protected void Page_Load(object sender, EventArgs e)
        {
            MultiView1.SetActiveView(View1);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            id = GridView1.SelectedDataKey.Value.ToString();
            Label1.Text = "您选择的航班次为:<br><span style='font - family:微软雅黑; font - size:Large; font-weight:bold;'>" 
                + id +"</span>";
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            MultiView1.SetActiveView(View2);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            date = Calendar1.SelectedDate.Year.ToString() + "/" 
                + Calendar1.SelectedDate.Month.ToString() + "/" 
                + Calendar1.SelectedDate.Day.ToString();
            MultiView1.SetActiveView(View2);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String today =DateTime.Today.Year.ToString() + "/"
                +DateTime.Today.Month.ToString() + "/"
                +DateTime.Today.Day.ToString();
            id = GridView1.SelectedDataKey.Value.ToString();
            date = Calendar1.SelectedDate.Year.ToString() + "/"
                + Calendar1.SelectedDate.Month.ToString() + "/"
                + Calendar1.SelectedDate.Day.ToString();
            String mysql = "INSERT INTO [airDB].[dbo].[book]([uid],[fid],[btime],[fdate]) VALUES(" 
                + "'" + Session["uid"]
               + "','" + id
               + "','" + today
               + "','" + date
               + "')";
            if (mycmd.ExecuteNonQuery(mysql))
            {
                Response.Write("<script>alert('预定成功!');</script>");
            }
            else
            {
                Response.Write("<script>alert('预定失败!" + mysql + "');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            MultiView1.SetActiveView(View1);
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string condstr = "";
            if (startplace.Text != null)
            {
                condstr += "始发地 = '" + startplace.Text + "'";
                if(endplace.Text != null)
                {
                    condstr += "AND 目的地 = '" + endplace.Text + "'";
                }
            }
            else{
                if (endplace.Text != null)
                {
                    condstr += "目的地 = '" + endplace.Text + "'";
                }
            }
            string mysql = "SELECT fid AS ID, fname AS 航班, fstartplace AS 始发地, fendplace AS 目的地, fstarttime AS 起飞时间, fendtime AS 到达时间, fseat AS 座位数, fprice AS 价格 FROM flight";
            DataSet myds = mycmd.ExecuteQuery(mysql, "flight");
            DataView mydv = myds.Tables["flight"].DefaultView;
            mydv.RowFilter = condstr;
            GridView1.DataSource = mydv;
            GridView1.DataSourceID = null;
            GridView1.DataBind();
        }
    }
}