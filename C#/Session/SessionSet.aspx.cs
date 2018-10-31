using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SessionSet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["ss_txt"] = (txt_ss_txt.Text=="") ? "空字符串":txt_ss_txt.Text;
    }
    protected void btn_ss_arr_Click(object sender, EventArgs e)
    {
        string[] Str_arr = txt_ss_arr.Text.Split(',');
        Session["ss_Sarr"] = Str_arr;
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Session["ss_cal"] = Calendar1;

    }
  }