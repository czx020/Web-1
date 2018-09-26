using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class For_Zhishut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i_num, i_isZhishu;
        Boolean b_flag; //设置一个标志，以判断是否为质数
        i_num = int.Parse(TextBox1.Text);

        b_flag = true;
        for (i_isZhishu = i_num / 2; i_isZhishu >= 2; i_isZhishu--)
        {
            if (i_num % i_isZhishu == 0) { b_flag = false; break; }
        }
        if (b_flag == true)
        {
            Label1.Text = i_num + "是质数";
        }
        else { Label1.Text = i_num + "不是是质数"; }
    }
}

/*
 int n = int.Parse(TextBox1.Text); ;
        int sum = 0;
        for (int i = 1; i <= n; i++)
        {
            if (n % i == 0)
            {
                sum += 1;
            }
        }
        if (sum == 2)
        {
            Label1.Text= TextBox1.Text + "是质数";
        }
        else
        {
            Label1.Text = TextBox1.Text + "不是质数";
        }
    }
*/

/* 方法二
 * int n = int.Parse(TextBox1.Text); ;
            bool isFind = false;
            for (int i = 2; i <= n - 1; i++)
            {
                if (n % i == 0)
                {
                    isFind = true;
                    break;
                }
            }
            if (!isFind)
            {
                Console.WriteLine("n是质数");
            }
            else
            {
                Console.WriteLine("n不是质数");
            }
 */