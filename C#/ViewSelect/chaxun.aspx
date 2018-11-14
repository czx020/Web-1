<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chaxun.aspx.cs" Inherits="chaxun" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="主导航.zhuid" HeaderText="主导航.zhuid" 
                    SortExpression="主导航.zhuid" />
                <asp:BoundField DataField="功能名称" HeaderText="功能名称" SortExpression="功能名称" />
                <asp:BoundField DataField="主导航链接网页" HeaderText="主导航链接网页" 
                    SortExpression="主导航链接网页" />
                <asp:BoundField DataField="二级导航.zhuid" HeaderText="二级导航.zhuid" 
                    SortExpression="二级导航.zhuid" />
                <asp:BoundField DataField="erjiid" HeaderText="erjiid" 
                    SortExpression="erjiid" />
                <asp:BoundField DataField="二级功能名称" HeaderText="二级功能名称" 
                    SortExpression="二级功能名称" />
                <asp:BoundField DataField="链接网页" HeaderText="链接网页" SortExpression="链接网页" />
                <asp:BoundField DataField="排序" HeaderText="排序" SortExpression="排序" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/tianpingdian.mdb" 
            SelectCommand="SELECT * FROM [导航联系] WHERE ([erjiid] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="erjiid" QueryStringField="ttt" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
