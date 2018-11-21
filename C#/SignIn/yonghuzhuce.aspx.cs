using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class yonghuzhuce : System.Web.UI.Page
{
     

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Title = "Compare Validator控件应用示例";
        txtusername.Focus();
        lblpass.Text = "";
    

    }
    protected void but_Click(object sender, EventArgs e)
    {
        int i = -1;
        lblpass.Text = "本页已通过验证!";
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/tianpingdian.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);



        string sql = "insert into  用户表(用户名,密码) values('" + txtusername.Text + "','" + txtpassword.Text + "')";

        Response.Write(sql);
        cnn.Open();
        cmd = new OleDbCommand(sql, cnn);

        try { i = cmd.ExecuteNonQuery(); }

        catch (OleDbException)
        {

        }

        cnn.Close();
        if (i == 1)
        {

            // but2.Visible = true; 
            Response.Write("<script>alert('注册成功!')</script>");

            // Response.Redirect("denglu.aspx");
        }

        else if (i < 1)
        {
            Response.Write("<script>alert('注册出错了，重新选个用户名!')</script>");

        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("denglu.aspx");
    }
}