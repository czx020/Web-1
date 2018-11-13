<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    </head>     
    <body>     
        <form id="form1" runat="server">
       <div id="Logo">     
           <ul>     
            <li class="first"><a href="https://vitan.me">博客</a>  
               </li>     
               <li><a href="#">微博</a></li>     
               <li><a href="#">酷安</a></li>     
               <li><a href="#">Twitter</a></li>
               <li><a href="#">Facebook</a></li>     
               <li><a href="#">Telegram</a></li>     
               <li class="last" style="border:none;">      
                   <img src="img/Logo.png" width="40"/>  
               </li>     
           </ul>     
       </div>  
        <div id ="box">
        <div id="left">
        <div ><h5 class="projects">Linux 各发行版本</h5></div>
        <br />
        <div class="linux"><a href="https://linux.org"><img src="img/Linux.png" width="40" height="40" /></a></div>
        <br />
        <div class="linux"><a href="https://archlinux.org"><img src="img/ArchLinux.png" width="40" height="40" /></a></div>
        <br />
        <div class="linux"><a href="https://ubuntu.com"><img src="img/Ubuntu.png" width="40" height="40" /></a></div>
        <br />
        <div class="linux"><a href="https://raspberrypi.org"><img src="img/RaspberryPi.png" width="40" height="40" /></a></div>
        <br />
        </div>
        <div id="right">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="产品编号" DataSourceID="SqlDataSource3" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="产品编号" HeaderText="产品编号" ReadOnly="True" SortExpression="产品编号" />
                    <asp:BoundField DataField="产品名称" HeaderText="产品名称" SortExpression="产品名称" />
                    <asp:BoundField DataField="产品价格" HeaderText="产品价格" SortExpression="产品价格" />
                    <asp:BoundField DataField="产品图片" HeaderText="产品图片" SortExpression="产品图片" />
                    <asp:BoundField DataField="产品类别" HeaderText="产品类别" SortExpression="产品类别" />
                    <asp:CheckBoxField DataField="产品有效" HeaderText="产品有效" SortExpression="产品有效" />
                    <asp:BoundField DataField="产品排序" HeaderText="产品排序" SortExpression="产品排序" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:tianpingdianConnectionString %>" ProviderName="<%$ ConnectionStrings:tianpingdianConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [商品存量]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server">
            </asp:EntityDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
        </div>
        <div class="clv"></div>
    <div id="copyright">
        <li>Vitan 版权所有 @ 2018</li>
    </div>
        </form>
</body>
</html>
