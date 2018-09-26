<%@ Page Language="C#" AutoEventWireup="true" CodeFile="list.aspx.cs" Inherits="list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BulletedList</title>
       <style>
       .center
{     width:792px;
      margin:10px auto;
      text-align:center;  
      padding:20px;
      background-color:#b0e0e6;
      border-bottom:1px solid black;
      font-size:15; 
}
    .b1NavBar 
    { padding:0px;
      background-image:url(img/back_navbar.png);
      background-repeat:repeat-x;
      border-bottom:1px solid #dedede;
      border-top:1px solid #ccc;
       }
       .b1NavBar li
       {
           display:inline-block;
           padding:15px 30px 15px 30px;
           border-right:1px solid #dedede;
           }
        .b1NavBar a
        {
            font-size:14px;
            text-decoration:none;
            color:#666
            }
         .b1NavBar a:hover
         {
             color:Red;}
    .font{color:Green}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="center">
    <h2 class="font">BulletedList</h2>
     <hr />
        <asp:BulletedList ID="BulletedList1" runat="server" >
            <asp:ListItem>One</asp:ListItem>
            <asp:ListItem>Two</asp:ListItem>
            <asp:ListItem>Three</asp:ListItem>
            <asp:ListItem>Four</asp:ListItem>
        </asp:BulletedList>
        <hr />
    </div>
        <div class="center">
         <h2 class="font">BulletedList 链接</h2>
          <hr />
        <asp:BulletedList ID="BulletedList2" runat="server" DisplayMode="HyperLink">
            <asp:ListItem Value="https://coolapk.com">酷安</asp:ListItem>
            <asp:ListItem Value="https://vitan.me">Vitan</asp:ListItem>
            <asp:ListItem Value="https://google.com">Google</asp:ListItem>
        </asp:BulletedList>
        <hr />
        </div>
        <div class="center">
        <h2 class="font">BulletedList 调用数据库数据</h2>
         <hr />
        <asp:BulletedList ID="BulletedList3" runat="server" DisplayMode="HyperLink" 
            DataSourceID="AccessDataSource1" DataTextField="名称" DataValueField="链接">
        </asp:BulletedList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/link.accdb" SelectCommand="SELECT * FROM [link]">
        </asp:AccessDataSource>
    <hr />
    </div>
    <div class="center" >
        <h2 class="font">BulletedList 调用数据库数据 设置导航</h2>
         <asp:BulletedList ID="BulletedList4" runat="server" DisplayMode="HyperLink" CssClass="b1NavBar" 
            DataSourceID="AccessDataSource1" DataTextField="名称" DataValueField="链接">
        </asp:BulletedList>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/db/link.accdb" SelectCommand="SELECT * FROM [link]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
