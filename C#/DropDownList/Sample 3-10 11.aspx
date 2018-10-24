<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample 3-10 11.aspx.cs" Inherits="Sample_3_7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>DropDownList</h2>
        <div id="div_p1">
        <p>选定某一项后，自动列出该项的index,text,value</p>
            <asp:DropDownList ID="ddl_1" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddl_1_SelectedIndexChanged">
                <asp:ListItem Value="first">选定第一项</asp:ListItem>
                <asp:ListItem Value="second">选定第二项</asp:ListItem>
                <asp:ListItem Value="third">选定第三项</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <span class="w250">获取选定项的selectedIndex:</span><asp:TextBox ID="txt_index" runat="server"></asp:TextBox> 
            <br />
            <span class="w250">获取选定项的selectedText:</span><asp:TextBox ID="txt_text" runat="server"></asp:TextBox> 
            <br/>
            <span class="w250">获取选定项的selectedValue:</span><asp:TextBox ID="txt_value" runat="server"></asp:TextBox> 
            <br />
            <span class="w250">获取ddl中总共有多少个选项:</span><asp:TextBox ID="txt_ItemCount" runat="server"></asp:TextBox> 
            <br />
            <br/>
            <asp:Button ID="btn_clear" runat="server" Text="清除所有的项" 
                onclick="btn_clear_Click" />

            <asp:Button ID="btn_s3" runat="server" Text="自动选中第三项" onclick="btn_s3_Click" />
            </div>

        <hr />
        <div id="div_p2">
         <p>让DropdownList也可以作为导航：</p>
            <asp:DropDownList ID="ddl_nav" runat="server" DataSourceID="ADS_NAV" 
                DataTextField="网站名称" DataValueField="网址" >
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="go >" onclick="Button1_Click" />
            <asp:AccessDataSource ID="ADS_NAV" runat="server" DataFile="~/DATA/51ZXW.mdb" 
                SelectCommand="SELECT [网站名称], [网址] FROM [TB_HLINKS]"></asp:AccessDataSource>

             <br />
            <asp:Button ID="Button2" runat="server" Text="设置第三项的内容与网址，到google" 
                onclick="Button2_Click" />
            <br />
            <asp:Button ID="Button3" runat="server" Text="给ddl_nav添加一个ListItem（对象）" 
                onclick="Button3_Click" />
        </div>
    
    </div>
    </form>
</body>
</html>
