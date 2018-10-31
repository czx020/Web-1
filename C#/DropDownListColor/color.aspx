<%@ Page Language="C#" AutoEventWireup="true" CodeFile="color.aspx.cs" Inherits="color" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" >
    body 
    {
        text-align:center;
        margin-top:30px;
    }
    .red{color:Red}
    .green{color:Green}
    .blue{color:Blue}
    .orange{color:Orange}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="red">红</asp:ListItem>
            <asp:ListItem Value="green">绿</asp:ListItem>
            <asp:ListItem Value="blue">蓝</asp:ListItem>
            <asp:ListItem Value="orange">橙</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" Text="确定" onclick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text="颜色示例" CssClass="Lime" ></asp:Label>
    </div>
    </form>
</body>
</html>
