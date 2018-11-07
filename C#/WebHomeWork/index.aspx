<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Phone" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    #banner
    {
        width:1200px;
        padding-top:15px;
        margin:0 auto 0;
    }
    #guid
    {
        width:1200px;
        margin:0 auto 0;
        ｝
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="banner">
    <img src="img/timg1.jpg" width="1200px" />
    </div>
    <div style="margin-top:2px;" id="guid">
        <Table ID="guid" style="width:100%" bgcolor="Orange">
        <tr>
            <td style="width:204px; height:20px; text-align:center;">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="1.aspx">首页</asp:HyperLink></td>
            <td style="width:204px; height:20px; text-align:center;">
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="1.aspx">交易</asp:HyperLink></td>
            <td style="width:204px; height:20px; text-align:center;">
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="1.aspx">联系</asp:HyperLink></td>
            <td style="width:204px; height:20px; text-align:center;">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="1.aspx">来吧</asp:HyperLink></td>
            <td style="width:204px; height:20px; text-align:center;">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="1.aspx">关于</asp:HyperLink></td>
        </tr>
        </Table>
    </div>
    <div id="left">
    
    </div>
    </div>
    </form>
</body>
</html>
