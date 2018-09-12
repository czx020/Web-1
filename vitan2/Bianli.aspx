<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Bianli.aspx.cs" Inherits="Bianli" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="div_chk" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button" /><asp:Button ID="Button2"
            runat="server" Text="Button" /> 
        <asp:Button ID="Button3" runat="server" Text="Button" /><asp:TextBox
                ID="TextBox1" runat="server"></asp:TextBox>
       <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:TextBox
                    ID="TextBox3" runat="server"></asp:TextBox>
        <div />
        <div>
        <asp:Button ID="Button4" runat="server" Text="统计控件个数" onclick="Button4_Click" />
        </div>
    </div>
    </form>
</body>
</html>
