<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>添加书籍</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
        <td>书籍编号</td>
        <td><asp:TextBox ID="bh" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>书籍名称</td>
        <td><asp:TextBox ID="mc" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>书籍封面图</td>
        <td><asp:TextBox ID="fm" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>书籍价格</td>
        <td><asp:TextBox ID="jg" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>出版社</td>
        <td><asp:TextBox ID="cbs" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>出版时间</td>
        <td>
            <asp:Calendar ID="sj" runat="server"></asp:Calendar>
        </td>
    </tr>
    <tr>
        <td>主编作者</td>
        <td><asp:TextBox ID="zz" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>书籍类别</td>
        <td><asp:TextBox ID="lb" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td><asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" /></td>
        <td><asp:Button ID="Button2" runat="server" Text="Button" /></td>
    </tr>
</table>
    </div>
    </form>
</body>
</html>
