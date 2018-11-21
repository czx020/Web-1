<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MutSelect.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入产品编号或名称"></asp:TextBox><asp:Button ID="Button1"
            runat="server" Text="Button" />
        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="产品编号" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="产品编号" HeaderText="产品编号" ReadOnly="True" 
                    SortExpression="产品编号" />
                <asp:BoundField DataField="产品名称" HeaderText="产品名称" SortExpression="产品名称" />
                <asp:BoundField DataField="产品价格" HeaderText="产品价格" SortExpression="产品价格" />
                <asp:BoundField DataField="产品图片" HeaderText="产品图片" SortExpression="产品图片" />
                <asp:BoundField DataField="产品类别" HeaderText="产品类别" SortExpression="产品类别" />
                <asp:BoundField DataField="价格层次" HeaderText="价格层次" SortExpression="价格层次" />
                <asp:CheckBoxField DataField="产品有效" HeaderText="产品有效" SortExpression="产品有效" />
                <asp:BoundField DataField="产品排序" HeaderText="产品排序" SortExpression="产品排序" />
                <asp:BoundField DataField="单位" HeaderText="单位" SortExpression="单位" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/tianpingdian.mdb" 
            SelectCommand="SELECT * FROM [商品明细] WHERE (([产品编号] = ?) OR ([产品名称] LIKE '%' + ? + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="产品编号" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="TextBox1" Name="产品名称" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
