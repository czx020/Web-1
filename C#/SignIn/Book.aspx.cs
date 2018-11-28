using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Book : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = -1;
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/tianpingdian.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);



        string sql = "insert into  书籍表(书籍编号,书籍名称,书籍封面图,书籍价格,出版社,出版时间,主编作者,书籍类别) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";

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
            Response.Write("<script>alert('添加书籍成功!')</script>");

            // Response.Redirect("denglu.aspx");
        }

        else if (i < 1)
        {
            Response.Write("<script>alert('添加出错了，重新书籍名名!')</script>");

        }
    }
}