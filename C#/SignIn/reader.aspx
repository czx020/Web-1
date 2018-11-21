<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reader.aspx.cs" Inherits="reader" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="读者编号" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="读者编号" HeaderText="读者编号" ReadOnly="True" 
                    SortExpression="读者编号" />
                <asp:BoundField DataField="读者姓名" HeaderText="读者姓名" SortExpression="读者姓名" />
                <asp:BoundField DataField="读者类型" HeaderText="读者类型" SortExpression="读者类型" />
                <asp:BoundField DataField="读者性别" HeaderText="读者性别" SortExpression="读者性别" />
                <asp:BoundField DataField="办证日期" HeaderText="办证日期" SortExpression="办证日期" />
                <asp:BoundField DataField="读者相片" HeaderText="读者相片" SortExpression="读者相片" />
                <asp:BoundField DataField="密码" HeaderText="密码" SortExpression="密码" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/mydatabase.mdb" 
            SelectCommand="SELECT * FROM [读者信息] WHERE ([读者编号] = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="读者编号" SessionField="user" Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
