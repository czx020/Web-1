using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lianjia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i_start,i_end,i_sum = 0;
		int i_start = int.Parse(TextBox1.Text);
        int i_end = int.Parse(TextBox2.Text);
        
		while (i_start <= i_end) {
			i_sum += i_start;
			i_start++;
		}
		label1.Text = TextBox1.Text + "连加到" + TextBox2.Text + "的和为：" + i_sum.Tostring()
    }
}
