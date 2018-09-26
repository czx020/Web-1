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

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        CheckBox chk;
        foreach (Control _ctl in div_chk.Controls)
        {
            if (_ctl is CheckBox)
            {
                chk = (CheckBox)_ctl;
                if (chk.Checked == true)
                {
                    TextBox1.Text += chk.Text + ",";
                    //TextBox1.Text = TextBox5.Text + chk.Text;
                }
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        char[] str1 = "https://vitan.me".ToCharArray();
        foreach (char char1 in str1)
        {
            TextBox2.Text += char1.ToString() + Convert.ToChar(13);


            //for (int i = 0; i < str1.Length;i++)
            //{
            // TextBox2.Text += char1.ToString() + Convert.ToChar(13); 
        }
    }
}