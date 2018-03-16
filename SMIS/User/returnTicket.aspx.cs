using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMIS.User
{
    public partial class returnTicket : System.Web.UI.Page
    {
        CommDB mycmd = new CommDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] == null)
            {
                Response.Write("<script>alert('请先登录!');</script>");
                Response.Redirect("~/", false);
            }

            String mysql = "SELECT book.bid AS ID, book.fid AS 航班号, flight.fname AS 航空公司, flight.fstartplace AS 始发地, flight.fendplace AS 目的地, book.fdate AS 起飞日期, flight.fstarttime AS 起飞时间, book.btime AS 预定时间, flight.fprice AS 价格 ,book.uid FROM book INNER JOIN flight ON book.fid = flight.fid WHERE (book.uid = '"+Session["uid"]+"') AND (book.bid NOT IN(SELECT bid FROM rebook))";
            DataSet myds = mycmd.ExecuteQuery(mysql, "book");
            DataView mydv = myds.Tables["book"].DefaultView;
            if (mydv.Count == 0)
            {
                Response.Write("<script>alert('没有订票记录!');</script>");
            }
            else
            {
                GridView1.DataSource = mydv;
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            flight.Text = GridView1.SelectedDataKey == null ? "" : GridView1.SelectedDataKey.Value.ToString();
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            flight.Text = "";
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedDataKey == null)
                Response.Write("<script>alert('请选择退票航班');</script>");
            else
            {
                String today = DateTime.Today.Year.ToString() + "/"
                + DateTime.Today.Month.ToString() + "/"
                + DateTime.Today.Day.ToString();
                //String mysql = "DELETE * FROM book where bid = '"+GridView1.SelectedDataKey.Values["ID"].ToString()+"'";
                String mysql = "INSERT INTO [airDB].[dbo].[rebook](bid,rtime) VALUES('" + GridView1.SelectedDataKey.Values["ID"].ToString() + "','" + today + "')";
                if (mycmd.ExecuteNonQuery(mysql))
                {
                    Response.Write("<script>alert('退票成功!');</script>");
                    Response.Redirect("~/User/returnTicket.aspx", false);
                }
                else
                {
                    Response.Write("<script>alert('退票失败!" + mysql + "');</script>");
                }
            }
        }
    }
}