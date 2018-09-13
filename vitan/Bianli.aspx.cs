using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bianli : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        int b, t;
        b = 0;
        t = 0;
        foreach (Control _ctl in div_chk.Controls)
        {
            if (_ctl is Button)
            {
                b++;
            }
            if (_ctl is TextBox)
            { 
                t++;
            }
        }
       Response.Write("按钮有："+b.ToString()+"个"+"<br/>");
       Response.Write("文本框有：" + t.ToString() + "个" + "<br/>");
    } 
}
