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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="产品编号" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize = "5">
                <Columns>
                    <asp:BoundField DataField="产品编号" HeaderText="编号" ReadOnly="True" SortExpression="产品编号" />
                    <asp:BoundField DataField="产品名称" HeaderText="名称" SortExpression="产品名称" />
                    <asp:ImageField DataImageUrlField="产品图片" DataImageUrlFormatString="img\{0}" HeaderText="图片">
                    </asp:ImageField>
                    <asp:BoundField DataField="产品类别" HeaderText="类别" SortExpression="产品类别" />
                    <asp:BoundField DataField="价格层次" HeaderText="价格层次" SortExpression="价格层次" />
                    <asp:CheckBoxField DataField="产品有效" HeaderText="产品有效" SortExpression="产品有效" />
                    <asp:BoundField DataField="产品排序" HeaderText="排序" SortExpression="产品排序" />
                    <asp:BoundField DataField="单位" HeaderText="单位" SortExpression="单位" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tianpingdianConnectionString3 %>" ProviderName="<%$ ConnectionStrings:tianpingdianConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [商品明细]"></asp:SqlDataSource>
        </div>
        </div>
        <div class="clv"></div>
    <div id="copyright">
        <li>Vitan 版权所有 @ 2018</li>
    </div>
        </form>
</body>
</html>
