<%@ Page Language="C#" Debug="true"  AutoEventWireup="true" CodeFile="Denglu.aspx.cs" Inherits="Denglu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server"> 
 <title></title> 
</head> 
<body> 
 <div align="center"> 
 <h1>用户登录页面</h1> 
 <form id="form1" runat="server"> 
  <p> <asp:Label ID="lbusername" runat="server">用户名：</asp:Label> 
   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
   </p> 
  
  <p> <asp:Label ID="lbpsw" runat="server">密 　码：</asp:Label> 
  <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox> 
  </p> 
  <p><asp:Button ID="btnLogin" runat="server" Text="登录" onclick="btnLogin_Click" />&nbsp&nbsp
   <asp:Button ID="btnCancel" runat="server" Text="注册" onclick="btnCancel_Click"  /> 
  </p> 
 </form> 
 </div> 
</body> 
</html>
