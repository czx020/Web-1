<%@ Page Language="C#" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="History" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="AccessDataSource1"  ItemPlaceholderID="item">
        <LayoutTemplate>
                <h1>中史题</h1>
                <p id="item" runat="server"></p>
            </LayoutTemplate>
            <ItemTemplate>
                <p class="xuanxiang" >
                    <%#Eval("编号") %>
                    <%#Eval("题目")%>
                <br />
                    <%#Eval("A选项")%>
                 <br />
                    <%#Eval("B选项")%>
                 <br />
                    <%#Eval("C选项")%>
                 <br />
                    <%#Eval("D选项")%>
                 <br /><br />
                    <asp:Button ID="Button1"  runat="server"  CommandName="group1"   CommandArgument="A"  CssClass="anniu"  Text="选项A" />
                    <asp:Button ID="Button2"  runat="server"  CommandName="group1"   CommandArgument="B"  CssClass="anniu"  Text="选项B"  />
                    <asp:Button ID="Button3"  runat="server"  CommandName="group1"   CommandArgument="C"  CssClass="anniu"  Text="选项C"  />
                    <asp:Button ID="Button4"  runat="server"  CommandName="group1"   CommandArgument="D"  CssClass="anniu"  Text="选项D" />
                    <br /><br />
                </p>
            </ItemTemplate>
        </asp:ListView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/mydatabase.mdb" SelectCommand="SELECT * FROM [单选题表]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
