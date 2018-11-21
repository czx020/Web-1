using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class Denglu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string str_connection = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=";
        string str_sourcefile = MapPath("~/db/mydatabase.mdb");
        OleDbConnection cnn;
        OleDbCommand cmd;
        OleDbDataReader datar;

        string str_conn = str_connection + str_sourcefile;
        cnn = new OleDbConnection(str_conn);

        string username = TextBox1.Text;
        string psd = TextBox2.Text;
        string name = "";
        string mima = "";

        string sql = "select 读者编号,密码 from 读者信息 where 读者编号='" + username + "'and 密码='" + psd + "'";

        cnn.Open();
        cmd = new OleDbCommand(sql, cnn);
        datar = cmd.ExecuteReader();

        while (datar.Read())
        {
            name = datar["读者编号"].ToString();
            mima = datar["密码"].ToString();
        }
        cnn.Close();



        if (name != "" && mima != "")
        {
            Session["user"] = name;
            Session["password"] = mima;

            // Response.Write("<script>alert('用户名和密码正确')</script>");
            Server.Transfer("reader.aspx");
        }
        else
        {
            Response.Write("<script>alert('用户名或者密码错误')</script>");
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("yonghuzhuce.aspx");
    }
}
