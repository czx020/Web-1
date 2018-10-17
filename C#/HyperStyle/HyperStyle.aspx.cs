using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        BulletedList1.CssClass = "style1";
        BulletedList1.DisplayMode = BulletedListDisplayMode.Text;
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        BulletedList1.CssClass = "style2";
        BulletedList1.DisplayMode = BulletedListDisplayMode.Text;
    }
    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {
        BulletedList1.CssClass = "style3";
        BulletedList1.DisplayMode = BulletedListDisplayMode.HyperLink;

    }
}