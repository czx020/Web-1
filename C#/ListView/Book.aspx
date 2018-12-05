<%@ Page Language="C#"  Debug="true" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
        <h1>书籍列表</h1>
        <div id="div_listview" class="fl">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" ItemPlaceholderID="itemholder">
            <LayoutTemplate>
            <div id="itemholder" runat="server"></div>
            </LayoutTemplate>
            <ItemTemplate>
            <div class="div_item" id="a1" runat="server">
                <img alt="" src='<%#Eval("书籍封面图","img/{0}") %>' />
            <div class="f1">
                <h2><%#Eval("书籍名称") %></h2>
                <p>价格：<%#Eval("书籍价格", "{0:C}")%></p>
                <p>作者：<%#Eval("主编作者")%></p>
                <p>出版时间：<%#Eval("出版时间","{0:D}") %></p>
                <p>出版社：<%#Eval("出版社") %></p>
                <a href='xiangxi.aspx?bianhao=<%#Eval("书籍编号") %>' style="text-decoration:none; font-size:14px; color:Red; margin-left:auto">查看详细</a>
            </div>
            <div class="clr"></div>
            </div>
            </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                DataFile="~/db/mydatabase.mdb" SelectCommand="SELECT * FROM [书籍表2]">
            </asp:AccessDataSource>
        </div>
      <div id="div_item" class="fr">
      <h3>按分类查询</h3>
          <asp:BulletedList ID="BulletedList1" runat="server" 
              DataSourceID="AccessDataSource1" DataTextField="书籍类别" DataValueField="书籍类别" DisplayMode="LinkButton">
          </asp:BulletedList>
    </div>
    <div class="clr"></div>
    </div>
    </form>
</body>
</html>
