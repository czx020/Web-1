<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .red{color:red;}
        .green{color:green;}
        .f1{float:left;
            height:21px;
        }
        #list1,#list2,#btns{float:left;width:220px;}
        #btns{width:78px;padding-top:80px;}
        .listP2{width:200px;height:180px;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div >
    <h2>ListBox 的简单应用</h2>
    <p class="red">多选 ListBox 获取选中值：</p>
    选择你喜欢的：<br /><br />
        <asp:ListBox ID="ListBox1" runat="server" Height="200px" Width="190px" CssClass="f1" SelectionMode="Multiple">
            <asp:ListItem>苹果</asp:ListItem>
            <asp:ListItem>香蕉</asp:ListItem>
            <asp:ListItem>凤梨</asp:ListItem>
            <asp:ListItem>樱桃</asp:ListItem>
            <asp:ListItem>龙眼</asp:ListItem>
            <asp:ListItem>可乐</asp:ListItem>
            <asp:ListItem>汉堡</asp:ListItem>
        </asp:ListBox>

        <asp:Button ID="btn" runat="server" Text="选择" onclick="Button1_Click" CssClass="f1"/>

        <asp:TextBox ID="TextBox1" runat="server" Height="200px" Width="178px" CssClass="f1" TextMode="MultiLine"></asp:TextBox>
    <div style="clear:both" ></div>
    </div>
    <hr />

    <div id="divP2">
    <p class="green">简单的点菜程序</p>
    <div id="list1">
    可选菜单：<br />
        <asp:ListBox ID="ListBox2" runat="server" CssClass="listP2"  Width="178" Height="200" DataSourceID="AccessDataSource1" 
            DataTextField="菜单" DataValueField="菜单" SelectionMode="Multiple"></asp:ListBox>

        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/db/Database21.accdb" SelectCommand="SELECT [菜单] FROM [表1]">
        </asp:AccessDataSource>

    </div>
       <div id="btns">
           <asp:Button ID="Button2" runat="server" Text=">>>" OnClick="Button2_Click" /> <br /> <br />
           <asp:Button ID="Button3" runat="server" Text="<<<" OnClick="Button3_Click" />
           </div>
           <div id="list2">
            点菜:<br />
            <asp:ListBox ID="ListBox3" runat="server" SelectionMode="Multiple" Width="178" Height="200"></asp:ListBox>
        </div>
    </div>
    </form>
</body>
</html>
