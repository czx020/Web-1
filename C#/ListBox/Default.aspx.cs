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
    //    for (int i = 0;i<ListBox1.Items.Count;i++){
    //        if(ListBox1.Items[i].Selected)
    //        {
    //            TextBox1.Text += ListBox1.Items[i].Text + ",";
    //        }

    //    }
        foreach (ListItem _li in ListBox1.Items)
        {
            if (_li.Selected)
            {
                TextBox1.Text += _li.Text + ",";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = ListBox2.Items.Count-1; i >= 0; i--)
        {
            if (ListBox2.Items[i].Selected)
            {
                ListBox3.Items.Add(ListBox2.Items[i]);
                ListBox2.Items.RemoveAt(i);
            }
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = ListBox3.Items.Count - 1; i >= 0; i--)
        {
            if (ListBox3.Items[i].Selected)
            {
                ListBox2.Items.Add(ListBox3.Items[i]);
                ListBox3.Items.Remove(ListBox3.Items[i]);
            }
        }
    }
}
