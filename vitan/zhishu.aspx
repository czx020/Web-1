<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhishu.aspx.cs" Inherits="zhishu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>质数</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    起点：<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <br />
    <br />
    终点：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
        <asp:Button ID="Button1" runat="server" Text="提交" onclick="Button1_Click" />
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    </form>
</body>
</html>
