<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_02.aspx.cs" Inherits="Sample_02" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>QueryString传值</h3>
        <p><span class="spMemo">静态超链接传值：</span>
            <a href="Sample_02_targ.aspx?id=123456">传递ID值</a>
        </p>

        <p><span class ="spMemo">获取txt_name控件的值，通过Response.Redirect转向并传值：</span><br />
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            <asp:Button ID="btn_name" runat="server" Text="传递name" 
                onclick="btn_name_Click" />
        </p>

        <p><span class="spMemo">获取checkbox的值，并通过Server.Transfer转向并传至：(AutoPostBack)</span><br />
            <asp:CheckBox ID="chk_1" runat="server" Text="传递是否选中" AutoPostBack="True" 
                oncheckedchanged="chk_1_CheckedChanged" />
        </p>
    

        <p><span class ="spMemo">一次性传递多个值：</span>
            <asp:DropDownList ID="ddl_soft" runat="server">
                <asp:ListItem>ASP.NET</asp:ListItem>
                <asp:ListItem>JavaScript</asp:ListItem>
                <asp:ListItem>CSS</asp:ListItem>
            </asp:DropDownList>
        
            <asp:DropDownList ID="ddl_website" runat="server">
                <asp:ListItem>百度</asp:ListItem>
                <asp:ListItem>google</asp:ListItem>
                <asp:ListItem>163</asp:ListItem>
            </asp:DropDownList>
        
            <asp:Button ID="btn_muilt" runat="server" Text="Button" 
                onclick="btn_muilt_Click" />
        
        </p>
    </div>
    </form>
</body>
</html>
