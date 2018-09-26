<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBox.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CheckBoxTest</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="div_chk"
          style="width: 1000px;border:1px outset #dd9900;margin:54px auto 0 auto; background:#ffd800;"
          runat="server">
    选择你学过的课程：

    <br />
            <asp:CheckBox ID="chk1" Text="数据库原理"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk2" Text="计算机网络技术"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk3" Text="管理学"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk4" Text="电子商务"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk5" Text="C语言"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk6" Text="计算机网络"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk7" Text="操作系统"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk8" Text="数据结构"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk9" Text="计算机基础"  Width="160px" runat="server" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="确定" 
            onclick="Button1_Click"  />
            <br />
                <asp:TextBox ID="TextBox1" TextMode="MultiLine" Rows="6" runat="server" 
            Width="1000px"></asp:TextBox>
     </div>
        <asp:TextBox ID="TextBox2" TextMode="MultiLine" Rows="8" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="遍历数组" onclick="Button2_Click"  />
        <hr />
    </div>
    </form>
</body>
</html>
