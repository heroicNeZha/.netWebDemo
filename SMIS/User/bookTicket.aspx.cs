using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMIS.User
{
    public partial class bookTicket : System.Web.UI.Page
    {
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
            /*
            String mysql = "UPDATE [airDB].[dbo].[user_] SET [uname] = '" + name.Text
               + "',[uloginname] = '" + username.Text
               + "',[utel] = '" + tel.Text
               + "', [umoney] = '" + money.Text
               + "', [upass] = '" + password.Text
               + "' WHERE [uid] = '" + uid.Value + "'";
            if (mycom.ExecuteNonQuery(mysql))
            {
                Response.Write("<script>alert('保存成功!" + mysql + "');</script>");
            }
            else
            {
                Response.Write("<script>alert('保存失败!" + mysql + "');</script>");
            }
            */
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            MultiView1.SetActiveView(View1);
        }
    }
}