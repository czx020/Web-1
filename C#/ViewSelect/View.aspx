<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View.aspx.cs" Inherits="View" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="erjiid" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="zhuid" HeaderText="zhuid" SortExpression="zhuid" />
                <asp:BoundField DataField="erjiid" HeaderText="erjiid" ReadOnly="True" 
                    SortExpression="erjiid" />
                <asp:BoundField DataField="二级功能名称" HeaderText="二级功能名称" 
                    SortExpression="二级功能名称" />
                <asp:BoundField DataField="链接网页" HeaderText="链接网页" SortExpression="链接网页" />
                <asp:BoundField DataField="排序" HeaderText="排序" SortExpression="排序" />
                <asp:HyperLinkField DataNavigateUrlFields="erjiid" 
                    DataNavigateUrlFormatString="chaxun.aspx?ttt={0}" DataTextField="erjiid" 
                    HeaderText="视图查询" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/tianpingdian.mdb" SelectCommand="SELECT * FROM [二级导航]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
