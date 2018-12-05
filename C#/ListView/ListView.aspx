<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListView.aspx.cs" Inherits="ListView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>书籍信息</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1" ItemPlaceholderID="holder">
            <LayoutTemplate>
                <p>书籍信息</p>
                <p id="holder" runat="server"></p>
            </LayoutTemplate>
            <ItemTemplate>
                <p id="holder" runat="server">
                <%#Eval("书籍名称") %>
                <%#Eval("主编作者")%>
                <%#Eval("书籍价格", "{0:C}")%>
                <%#Eval("出版时间","{0:D}") %>
                </p>
            </ItemTemplate>
            </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/mydatabase.mdb" SelectCommand="SELECT * FROM [书籍表]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
