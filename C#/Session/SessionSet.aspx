<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionSet.aspx.cs" Inherits="SessionSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Session的应：设置页</h3>

    <p>1.存储字符串的 Session</p>
        <asp:TextBox ID="txt_ss_txt" runat="server"></asp:TextBox>
        <asp:Button ID="btn_ss_txt"
            runat="server" Text="保存至 Session['ss_text']" onclick="Button1_Click" />

    <p>2.存储一个数组;(输入22，33，444的形式):</p><br />
        <asp:TextBox ID="txt_ss_arr" runat="server" Width="250"></asp:TextBox>
        <asp:Button ID="btn_ss_arr" runat="server" Text="保存至Session[ss_Sarr]" onclick="btn_ss_arr_Click"  />
    

    <p>3.存储一个控件：</p><asp:Button ID="Button1" runat="server" Text="保存至session['ss_cal']" 
            onclick="Button1_Click2" />
    <br />
        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
            ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
    <p><a href="SessionRead.aspx">跳转至读取页面</a></p>
    
    </div>
    </form>
</body>
</html>
