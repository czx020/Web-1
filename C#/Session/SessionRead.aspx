<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionRead.aspx.cs" Inherits="SessionRead" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h2>SessionRead page</h2>
       <p> 读取ss_txt的值：</p><asp:Label ID="lb_ss" runat="server" Text=""></asp:Label>
    
    </div>
    <div>
    
        <p>读取ss_Sarr的值：</p><asp:TextBox ID="txt_Sarr" 
            runat="server" TextMode="MultiLine" Width="230px" Height="80px"></asp:TextBox>
    
    </div>
    <div>
    
       <p> 读取控件：</p><asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    
    </div>
    <div>
    
        <p>读取Session相关属性参数：</p>
        <p>1.遍历Session:<br /></p>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br />
        <p>2.获取SessionID：</p>
        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    
        <br />
        <p>3.查看Session过期时间（还剩多少分钟）</p>
        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    
    </div>
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="清除所有的Session" 
            onclick="Button1_Click" /><asp:Button ID="Button2" runat="server" 
            Text="清除Session ss_txt" onclick="Button2_Click" />
    
    </div>
    <asp:LinkButton ID="LinkButton1"
        runat="server" PostBackUrl="~/sessionSet.aspx">返回设置页</asp:LinkButton>
    </form>
</body>
</html>