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
        lab_ss_txt.Text = (Session["ss_txt"] != null) ? Session["ss_txt"].ToString() : "Session为空";

        //获取数组
        txt_readSarr.Text = "";
        if(Session["ss_Sar"] != null){
            string[] _Sarr = (string[]) Session["ss_Sarr"];
            for (int i = 0;i < _Sarr.Length;i++)
            {txt_readSarr.Text += _Sarr[i] + "\n";} 
        }

        //读取控件
        if (Session["ss_cal"] != null)
        {
            Calendar _cal = (Calendar)Session["ss_cal"];
            pnl_ss_cal.Controls.Add(_cal);
        }

    }
}