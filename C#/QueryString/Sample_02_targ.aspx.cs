using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_02_targ : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //在PageLoad中接收传递来的值

        //接收ID值
        //当没有参数时QueryString["id"] == null
          lab_id.Text = Request.QueryString["id"];
                  
        //接收NAME值
          lab_name.Text = Request.QueryString["name"];

        //接收CHK值
          lab_chk.Text = Request.QueryString["chk"];

        //接收soft,website值,采用简略的写法
          lab_soft.Text = Request["soft"];
          lab_website.Text = Request["website"];

           
       

    }
}