using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMIS
{
    public partial class _Default : Page
    {
        CommDB mydb = new CommDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Clear();
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                string mysql;
                int i;
                string uname = "";
                switch (identity.SelectedIndex)
                {
                    case 0:
                        mysql = "SELECT mname FROM manager WHERE mloginname = '" + username.Text + "' AND mpass = '" + Password.Text + "'";
                        i = mydb.Rownum(mysql,ref uname);
                        if (i > 0)
                        {
                            Session["uname"] = uname;
                            Session["utype"] = "0";
                            Server.Transfer("~/Manager/welcome.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('对不起!有错误请查实!');</script>");
                        }
                        break;
                    case 1:
                        string uid = "";
                        mysql = "SELECT uname,uid FROM user_ WHERE uloginname = '" + username.Text + "' AND upass = '" + Password.Text + "'";
                        i = mydb.Rownum(mysql, ref uname,ref uid);
                        if (i > 0)
                        {
                            Session["uname"] = uname;
                            Session["uid"] = uid;
                            Session["utype"] = "1";
                            Server.Transfer("~/User/welcome.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('对不起!有错误请查实!');</script>");
                        }
                        break;
                }
            }
        }
    }
}