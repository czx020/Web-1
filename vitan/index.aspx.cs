using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "输入的内容为：" + TextBox1.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int s;
        s = 0;
        s = Convert.ToInt16(TextBox2.Text) + Convert.ToInt16(TextBox3.Text);
        Label2.Text = "结果：" + s.ToString() + "。";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        int a;
        a = 0;
        for (int i = 1; i <= 10; i++)
        {
            a += i;
        }
        Label3.Text = ("1到10的和为:" + a.ToString());
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked) { Label4.Text = "你选了：" + RadioButton1.Text; }
        if (RadioButton2.Checked) { Label4.Text = "你选了：" + RadioButton2.Text; }
        if (RadioButton3.Checked) { Label4.Text = "你选了：" + RadioButton3.Text; }
        if (RadioButton4.Checked) { Label4.Text = "你选了：" + RadioButton4.Text; }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        double d_dum = -1;
        RadioButton5.Checked = false;
        RadioButton6.Checked = false;
        RadioButton7.Checked = false;
        RadioButton8.Checked = false;
        try { d_dum = double.Parse(TextBox4.Text); }
        catch { }

        if (d_dum < 0 || d_dum > 120)
        {
            Label4.Text = "请输入正确的数字";
        }
        else
        {
            if (d_dum < 60) { RadioButton5.Checked = true; }
            if (d_dum >= 60 && d_dum < 80) { RadioButton6.Checked = true; }
            if (d_dum >= 80 && d_dum < 100) { RadioButton7.Checked = true; }
            if (d_dum >= 100 && d_dum < 120) { RadioButton8.Checked = true; }
        }

    }

    protected void RadioButton9_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == true)
        {
            Label5.Text = "你选择了：" + RadioButton9.Text;
        }
    }

    protected void RadioButton10_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == true)
        {
            Label5.Text = "你选择了：" + RadioButton10.Text;
        }
    }
    protected void RadioButton11_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == true)
        {
            Label5.Text = "你选择了：" + RadioButton11.Text;
        }
    }

    protected void RadioButton12_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == true)
        {
            Label5.Text = "你选择了：" + RadioButton12.Text;
        }
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        if (RadioButton9.Checked == false && RadioButton10.Checked == false && RadioButton11.Checked == false && RadioButton12.Checked == false)
        {
            Response.Write("<script>alert('请选择选项！')</script>"); }
        else if (RadioButton9.Checked)
        {
            Response.Write("<script>alert('选对了哦！')</script>"); 
        }
        else {
            Response.Write("<script>alert('选错了哦！')</script>"); 
        }
        
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        TextBox5.Text = "";
        CheckBox chk;
        foreach (Control _ctl in div_chk.Controls)
        {
            if(_ctl is CheckBox)
            {
                chk = (CheckBox)_ctl;
                if (chk.Checked==true)
                {
                   //TextBox5.Text = TextBox5.Text + chk.Text;
                }
            }
        }

    }
}