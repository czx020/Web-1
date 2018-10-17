<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2>ListBox的简单应用</h2>
    <hr />
    选择你喜欢的：<br /><br />
        <asp:ListBox ID="ListBox1" runat="server" Height="200px" Width="190px" CssClass="f1" SelectionMode="Multiple">
            <asp:ListItem>苹果</asp:ListItem>
            <asp:ListItem>香蕉</asp:ListItem>
            <asp:ListItem>凤梨</asp:ListItem>
            <asp:ListItem>樱桃</asp:ListItem>
            <asp:ListItem>龙眼</asp:ListItem>
            <asp:ListItem>可乐</asp:ListItem>
            <asp:ListItem>汉堡</asp:ListItem>
        </asp:ListBox>

        <asp:Button ID="Button1" runat="server" Text="选择" onclick="Button1_Click" />
        <asp:TextBox ID="TextBox1" runat="server" Height="200px" Width="178px" CssClass="f1" TextMode="MultiLine"></asp:TextBox>
    </div>
    <div style="clear:both" ></div>
    <hr />
    <div id="div2">
    <p>简单的点菜程序</p>
    <div id="list1">
    可选菜单：<br />
        <asp:ListBox ID="ListBox2" runat="server" CssClass="list2"  DataSourceID="AccessDataSource1" 
            DataTextField="菜单" DataValueField="菜单" SelectionMode="Multiple"></asp:ListBox>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/Database21.accdb" SelectCommand="SELECT [菜单] FROM [表1]">
        </asp:AccessDataSource>
    </div>
    </div>
    </form>
</body>
</html>
