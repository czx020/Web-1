<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBox2.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CheckBox应用</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id ="mydiv" >
    <h1>CheckBox应用</h1>
    <hr />
    <div>
        <asp:CheckBox ID="CheckBox1" Text="我是AutoPostBack" AutoPostBack="true" runat="server" 
            oncheckedchanged="CheckBox1_CheckedChanged" />
        <asp:TextBox
            ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <hr />
    <div id="div_chk"
          runat="server">
    请选择你的爱好：
    <br />
    <br />
         <asp:CheckBox ID="chk1" Text="数据库原理"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk2" Text="计算机网络技术"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk3" Text="管理学"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk4" Text="电子商务"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk5" Text="C语言"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk6" Text="计算机网络"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk7" Text="操作系统"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk8" Text="数据结构"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk9" Text="计算机基础"  Width="160px" runat="server" />
    </div>
    </div>
    </div>
    </form>
</body>
</html>
