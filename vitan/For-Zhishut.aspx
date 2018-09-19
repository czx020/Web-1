<%@ Page Language="C#" AutoEventWireup="true" CodeFile="For-Zhishut.aspx.cs" Inherits="For_Zhishut" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style>
 .center
{     width:780px;
      margin:10px auto;
      text-align:center;  
      padding:20px;
      background-color:#b0e0e6;
      border-bottom:1px solid black;
}
h2,h3,h4{ color:Red}

.myspan{color:Green}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center">
    <h2 class="center">For 循环判断一个数是否为质数。</h2>
    <hr />
    <span class="myspan">请输入一个数：</span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
        <asp:Button ID="Button1" runat="server" Text="判断" onclick="Button1_Click" />
    <br />
    <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
