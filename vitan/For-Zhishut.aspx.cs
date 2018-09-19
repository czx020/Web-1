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
}

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