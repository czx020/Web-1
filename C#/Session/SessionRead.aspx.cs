using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SessionRead : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //获取字符串
        lb_ss.Text = (Session["ss_txt"] != null) ? Session["ss_txt"].ToString() : "Session为空！";

        txt_Sarr.Text = "";
        if (Session["ss_Sarr"] != null)
        {
            string[] _Sarr = (string[])Session["ss_Sarr"];
            for (int i = 0; i < _Sarr.Length; i++)
            {
                txt_Sarr.Text += _Sarr[i] + "\n";
            }
        }
        //获取控件
        if (Session["ss_cal"] != null)
        {
            Calendar _cal = (Calendar)Session["ss_cal"];
            Panel1.Controls.Add(_cal);
        }


        //遍历session，获取主键和对象类型
        Label2.Text = "";
        foreach (string _key in Session.Keys)
        {
            Label2.Text += ("[" + _key + "]  " + Session[_key].GetType().ToString()) + "\n";
        }

        //获取sessionID
        Label3.Text = "SessionID为：" + Session.SessionID.ToString() + "\n";

        //获取Session有效期
        Label4.Text = "Session有效期为：" + Session.Timeout.ToString() + "分钟";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect(Request.Url.LocalPath.ToString());

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.Remove("ss_txt");
        Response.Redirect(Request.Url.LocalPath.ToString());
    }
}