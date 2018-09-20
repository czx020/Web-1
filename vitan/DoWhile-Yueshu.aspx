<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoWhile-Yueshu.aspx.cs" Inherits="DoWhile_Yueshu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DoWhile循环找约数</title>
   <style>
       .center
{     width:792px;
      margin:10px auto;
      text-align:center;  
      padding:20px;
      background-color:#b0e0e6;
      border-bottom:1px solid black;
}
h2,h3,h4{ color:darkblue }

.myspan{color:Green}
    </style>
</head>
<body >
    <form id="form1" runat="server">
    <div class="center">
    <h2 class="p">使用 Do While 循环求一个数的所以约数.</h2>
    <span class="myspan">请输入2~200的一个整数：</span><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="约数" onclick="Button1_Click" />
    <br />
    <br />
        <asp:Label ID="Label1" runat="server" ></asp:Label>
    </div>
    </form>
</body>
</html>
