<%@ Page Language="C#"  Debug="true" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>书籍列表</title>
    <link href="css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="box">
        <h1>书籍列表</h1>
        <div id="div_listview" class="fl">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="asc_shuji" ItemPlaceholderID="itemholder">
            <LayoutTemplate>
            <div id="itemholder" runat="server"></div>
            </LayoutTemplate>
            <ItemTemplate>
            <div class="div_item" id="a1" runat="server">
                <img alt="" src='<%#Eval("书籍封面图","img/{0}") %>' />
            <div class="fl">
                <h2><%#Eval("书籍名称") %></h2>
                <p>价格：<%#Eval("书籍价格", "{0:C}")%></p>
                <p>作者：<%#Eval("主编作者")%></p>
                <p>出版时间：<%#Eval("出版时间","{0:D}") %></p>
                <p>出版社：<%#Eval("出版社") %></p>
                <a href='xiangxi.aspx?bianhao=<%#Eval("书籍编号") %>' style="text-decoration:none; font-size:14px; color:Red; margin-left:auto">查看详情</a>
            </div>
            <div class="clr"></div>
            </div>
            </ItemTemplate>
            </asp:ListView>
            <asp:AccessDataSource ID="asc_shuji" runat="server" 
                DataFile="~/db/mydatabase.mdb" SelectCommand="SELECT * FROM [书籍表] WHERE ([书籍类别] = ？)" >
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="文学类" Name="书籍类别" SessionField="leibie" Type="String" />
                </SelectParameters>
                </asp:AccessDataSource>
                <asp:AccessDataSource ID="AccessDataSource1" runat="Server" >
            </asp:AccessDataSource>
        </div>

      <div id="div_menu" class="fr">
      <h3>按分类查询</h3>
          <asp:BulletedList ID="BulletedList1" runat="server" 
              DataSourceID="asc_lb" DataTextField="书籍类别" DataValueField="书籍类别" DisplayMode="LinkButton" OnClick="BulletedList1_Click">
          </asp:BulletedList>
          <asp:AccessDataSource ID="asc_lb" runat="server" DataFile="~/db/mydatabase.mdb" SelectCommand="SELECT [书籍类别] FROM [lb] ">
            </asp:AccessDataSource>
    </div>
    <div class="clr"></div>
    <div id="foot">版权所有 Vitan @ 2018</div>
    </div>
    </form>
</body>
</html>
