using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_3_7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void ddl_1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txt_index.Text = ddl_1.SelectedIndex.ToString();
        //注意获取text需要2个步骤：1 获取选定的Item; 2 获取Item的Text
        txt_text.Text = ddl_1.SelectedItem.Text;
        //也可以用更复杂的结构获取text（仅作为逻辑教学）
        //txt_text.Text = ddl_1.Items[ddl_1.SelectedIndex].Text;

        txt_value.Text = ddl_1.SelectedValue;

        txt_ItemCount.Text = ddl_1.Items.Count.ToString();

    }

    //重定向
    protected void Button1_Click(object sender, EventArgs e)
    {
        string url = ddl_nav.SelectedValue;
        //请注意这个语句：重定向
        Response.Redirect(url);
    }

    //清除所有项
    protected void btn_clear_Click(object sender, EventArgs e)
    {
        ddl_1.Items.Clear();

    }
    protected void btn_s3_Click(object sender, EventArgs e)
    {
        //在设定之前，先要清除原先的选项，否则报错
        ddl_1.SelectedItem.Selected = false;


        //注意第三项的下标是2:
        ddl_1.Items[2].Selected = true;
        //Response.Write(ddl_1.GetType().ToString());

    }

    //手动修改一项google
    protected void Button2_Click(object sender, EventArgs e)
    {
        ddl_nav.Items[2].Text = "GOOGLE";
        ddl_nav.Items[2].Value = "http://www.google.com.hk";
        
            
    }


    //以面向对象的编程方式，给ddl_nav添加一个子项
    protected void Button3_Click(object sender, EventArgs e)
    {
        ListItem obj_li;
        obj_li = new ListItem();  //实例化obj_li，然后才可以对其进行操作

        obj_li.Text = "新浪";
        obj_li.Value = "http://www.sina.com.cn";

        //这句的形式非常重要：给某个对象 添加一个子对象
        ddl_nav.Items.Add(obj_li);



    }
}