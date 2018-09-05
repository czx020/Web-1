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
        int s;
        s = 0;
        for (int i = 1; i <= 10; i++)
        {
            s += i;
        }
        Response.Write("1到10的和为：" + s.ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked) {Label2.Text = "你选择了：" + RadioButton1.Text;}
        if (RadioButton2.Checked) {Label2.Text = "你选择了：" + RadioButton2.Text; }
        if (RadioButton3.Checked) {Label2.Text = "你选择了：" + RadioButton3.Text; }
        if (RadioButton4.Checked) {Label2.Text = "你选择了：" + RadioButton4.Text; }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        double d_num = -1;

        RB1.Checked = false;
        RB2.Checked = false;
        RB2.Checked = false;
        RB4.Checked = false;

        try { d_num = double.Parse(TextBox2.Text); }
        catch { }

        if (d_num < 0 || d_num > 120)
        {
            Label3.Text = "请输入正确的数字";
        }
        else
        {
            if (d_num < 60) { RB1.Checked = true; }
            if (d_num >= 60 && d_num < 80) { RB2.Checked = true; }
            if (d_num >= 80 && d_num < 100) { RB3.Checked = true; }
            if (d_num >= 100 && d_num <= 120) { RB4.Checked = true; }
        }
    }
  
    protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton5.Checked == true)
        {
            Label4.Text = "你选择了：" + RadioButton5.Text;
        }
    }
    protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton6.Checked == true)
        {
            Label4.Text = "你选择了：" + RadioButton6.Text;
        }
    }
    protected void RadioButton7_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton7.Checked == true)
        {
            Label4.Text = "你选择了：" + RadioButton7.Text;
        }
    }
    protected void RadioButton8_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton8.Checked == true)
        {
            Label4.Text = "你选择了：" + RadioButton8.Text;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
       if(RadioButton5.Checked=false&&RadioButton6.Checked==false&&RadioButton7.Checked==false&&RadioButton8.Checked==false)
       {
           Response.Write("<script>alter('请选择答案！')</script>");}

       else if(RadioButton6.Checked)
       {
          Response.Write("<script>alter('答对了！')</script>");
       }
       else {
           Response.Write("<script>alter('答错了！')</script>");
       }
    }
}