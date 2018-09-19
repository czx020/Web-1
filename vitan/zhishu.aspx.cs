using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class zhishu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i_start = int.Parse(TextBox1.Text);
        int i_end = int.Parse(TextBox2.Text);
        int i_beTest;
        Boolean b_TestResult;

        string str_result = "质数有：";

        for (i_beTest = i_start; i_beTest <= i_end; i_beTest++)
        {
            b_TestResult = iszhishu( i_beTest);

            if (b_TestResult == true) { str_result += i_beTest + ","; }
           
        }
        Label1.Text = str_result;
        }
     protected Boolean iszhishu(int _beTest) {
         Boolean _result = true;
         for (int i = _beTest/2;i>=2;i--)
         {
             if ( _beTest % i == 0) { _result = false;break;}
         }
         return _result;
    }
}