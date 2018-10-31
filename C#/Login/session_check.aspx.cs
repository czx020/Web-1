using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class session_check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            string _id = Session["uid"].ToString();
            Label1.Text = "欢迎登录，" + _id + "!";
        }
        else {
            Response.Redirect("session_login.aspx");
        }

        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Remove("uid");
        
        //跳转到本身看看
        Server.Transfer(Request.Url.LocalPath.ToString());

    }
}