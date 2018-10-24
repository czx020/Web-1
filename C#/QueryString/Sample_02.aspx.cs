using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void chk_1_CheckedChanged(object sender, EventArgs e)
    {
        string _checked = chk_1.Checked.ToString();
        string _url = "Sample_02_targ.aspx?chk=" + _checked;
        Server.Transfer(_url);

    }
    protected void btn_name_Click(object sender, EventArgs e)
    {
        string _name = txt_name.Text;
        string _url = "Sample_02_targ.aspx?name=" + _name;
        Response.Redirect(_url);

    }
    protected void btn_muilt_Click(object sender, EventArgs e)
    {
        string _soft = ddl_soft.Text, _website = ddl_website.Text;
        //string _url = "Sample_02_targ.aspx?soft=" + _soft + "&website=" + _website;
        string _url = "Sample_02_targ.aspx?soft="+_soft+"&website="+_website;
        Response.Redirect(_url);

    }
}