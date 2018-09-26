using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DoWhile_Yueshu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int I_num, i_isYushu;

        I_num = i_isYushu = int.Parse(TextBox1.Text);
        string str_Result = I_num + "的约数有：";

        do
        {
            if (I_num % i_isYushu == 0)
            {
                str_Result += i_isYushu.ToString() + ",";
            }

            i_isYushu--;
        } while (i_isYushu > 1);
        str_Result += "1";

        Label1.Text = str_Result;
           
        }

}