<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionSet.aspx.cs" Inherits="SessionSet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="1">
    <h2>SessionSet page</h2>
        <p>1.存储字符串的session：<br />
        <asp:TextBox ID="txt_ss_txt" runat="server"></asp:TextBox>
        <asp:Button ID="btn_ss_txt" runat="server" Text="保存至Session['ss_txt']" 
            onclick="btn_ss_txt_Click" />
    </p>
    </div>
    <div>
    
       <p> 2.存储字符串数组的session：(如输入33,44,55,66的形式)<br />
        <asp:TextBox ID="txt_ss_arr" runat="server"></asp:TextBox>
        <asp:Button ID="btn_arr" runat="server" Text="保存至Session['ss_Sarr']" 
            onclick="btn_arr_Click" />
    </p>
    </div>
    <div>
    
        <p>3.存储一个控件：<asp:Calendar ID="Calendar1" 
            runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
            ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px">
            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
            <OtherMonthDayStyle ForeColor="#CC9966" />
            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
            <SelectorStyle BackColor="#FFCC66" />
            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                ForeColor="#FFFFCC" />
            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
        </asp:Calendar>
        <br />
        <asp:Button ID="btn_cal" runat="server" Text="保存至Session['ss_cal']" 
            onclick="btn_cal_Click" />
    </p>
    </div>
    <div>
    
       <p> 4.用Session.Add方式添加一个重名的Key,ss_txt：<asp:Button ID="btn_key" 
            runat="server" Text="添加重名key" onclick="btn_key_Click" />
       
    </p>
    </div>
    <div>
        <asp:LinkButton ID="lbtn_jump" runat="server" PostBackUrl="~/sessionRead.aspx">跳转到读取Session的页面</asp:LinkButton>
    </div>
    </form>
</body>
</html>
