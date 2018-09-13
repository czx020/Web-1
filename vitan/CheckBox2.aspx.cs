using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {
        TextBox1.Text = (CheckBox1.Checked) ? "选中状态":"非选中状态";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        CheckBox chk;
        foreach (Control _ctl in div_chk.Controls)
        {
            if (_ctl is CheckBox)
            {
                chk = (CheckBox)_ctl;
                if (chk.Checked == true)
                {
                    TextBox2.Text += chk.Text + ",";
                    //TextBox1.Text = TextBox5.Text + chk.Text;
                }
            }
        }
    }
}
  