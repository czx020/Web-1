<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GridView.aspx.cs" Inherits="GridView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
  body 
{
    background-repeat:no-repeat;
    text-align:center;
    padding-top:30px;
    margin:0 auto 0;
    width:800px;
    font-family:@微软雅黑;
    
}
    #GridVie
        {
            }
    #GridView1 td img
    {
        width:120px;
        height:110px;
        border:1px solid #d3ccd7;
        padding:2px;
        font-family:@微软雅黑;
    }
     
    #GridView1 th
    {
      background:purple;
      font-size:14px;
      padding:10px;
      color:White;
      font-family:@微软雅黑;
    }
    #GridView1 td
    {
        padding:5px;
        color:WindowText;
        font-size:12px;
        border:1px solid red;
        font-family:@微软雅黑;
    }
    #GridView1 tr:hover
    {
        background-color:Cyan;
    }
    #GridView1 tr:nth-child(odd)
    {
        background:rgba(0,225,255,.1);}
    #content
    {
        margin:0 auto 0;
        width:800px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="content">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="产品编号" DataSourceID="AccessDataSource1" AllowPaging="True">
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
            DataFile="~/db/TianPingdian.mdb" SelectCommand="SELECT * FROM [商品明细]">
        </asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
