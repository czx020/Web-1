<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xiangxi.aspx.cs" Inherits="xiangxi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="书籍编号" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="书籍编号" HeaderText="书籍编号" ReadOnly="True" 
                    SortExpression="书籍编号" />
                <asp:BoundField DataField="书籍名称" HeaderText="书籍名称" SortExpression="书籍名称" />
                <asp:BoundField DataField="书籍封面图" HeaderText="书籍封面图" SortExpression="书籍封面图" />
                <asp:BoundField DataField="书籍价格" HeaderText="书籍价格" SortExpression="书籍价格" />
                <asp:BoundField DataField="出版社" HeaderText="出版社" SortExpression="出版社" />
                <asp:BoundField DataField="出版时间" HeaderText="出版时间" SortExpression="出版时间" />
                <asp:BoundField DataField="主编作者" HeaderText="主编作者" SortExpression="主编作者" />
                <asp:BoundField DataField="书籍类别" HeaderText="书籍类别" SortExpression="书籍类别" />
                <asp:CheckBoxField DataField="图书状态" HeaderText="图书状态" SortExpression="图书状态" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/mydatabase.mdb" 
            SelectCommand="SELECT * FROM [书籍表] WHERE ([书籍编号] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="书籍编号" QueryStringField="bianhao" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
