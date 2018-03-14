using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMIS.User
{
    public partial class ownInfo : System.Web.UI.Page
    {
        CommDB mycom = new CommDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String mysql = "SELECT * FROM user_ WHERE uname = '" + Session["uname"] + "'";
                DataSet info = mycom.ExecuteQuery(mysql, "user_");
                DataRow row = info.Tables["user_"].Rows[0];
                uid.Value = row.ItemArray[0].ToString();
                name.Text = row.ItemArray[1].ToString();
                username.Text = row.ItemArray[2].ToString();
                tel.Text = row.ItemArray[3].ToString();
                money.Text = row.ItemArray[4].ToString();
                password.Text = row.ItemArray[5].ToString();
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            String mysql = "UPDATE [airDB].[dbo].[user_] SET [uname] = '" + name.Text
                + "',[uloginname] = '" + username.Text
                + "',[utel] = '" + tel.Text
                + "', [umoney] = '" + money.Text
                + "', [upass] = '" + password.Text
                + "' WHERE [uid] = '" + uid.Value + "'";
            if (mycom.ExecuteNonQuery(mysql))
            {
                Response.Write("<script>alert('保存成功!"+mysql+"');</script>");
            }else
            {
                Response.Write("<script>alert('保存失败!" + mysql+"');</script>");
            }
        }
    }
}