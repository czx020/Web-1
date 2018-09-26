<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="确认" OnClick="Button1_Click" />
            <br />
            <hr />
             第一个数：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            第二个数：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="求和" OnClick="Button2_Click" /><asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <hr />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="Button3" runat="server" Text="1到10的和为" OnClick="Button3_Click" />
            <br />
            <hr />
            你更喜欢哪个品牌？<br />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="一加" GroupName="Phone"/>
            <asp:RadioButton ID="RadioButton2" runat="server" Text="锤子" GroupName="Phone"/>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="华为" GroupName="Phone"/>
            <asp:RadioButton ID="RadioButton4" runat="server" Text="魅族" GroupName="Phone"/>
            <br />
            <asp:Button ID="Button4" runat="server" Text="确认" OnClick="Button4_Click" />
            <br />
            <hr />
            请输入0到120之间的数字<br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:Button ID="Button5" runat="server" Text="确认" OnClick="Button5_Click" />
            <br />
            <asp:RadioButton ID="RadioButton5" runat="server" Text="不及格" GroupName="CJ"/>
            <asp:RadioButton ID="RadioButton6" runat="server" Text="及格" GroupName="CJ"/>
            <asp:RadioButton ID="RadioButton7" runat="server" Text="优良" GroupName="CJ"/>
            <asp:RadioButton ID="RadioButton8" runat="server" Text="优秀" GroupName="CJ"/>
            <br />
            <hr />
            
           猜猜我更喜欢哪个品牌？<br /> 
            <asp:RadioButton ID="RadioButton9" runat="server" Text="一加" GroupName="Phone" OnCheckedChanged="RadioButton9_CheckedChanged"/>
            <asp:RadioButton ID="RadioButton10" runat="server" Text="锤子" GroupName="Phone" OnCheckedChanged="RadioButton10_CheckedChanged"/>
            <asp:RadioButton ID="RadioButton11" runat="server" Text="华为" GroupName="Phone" OnCheckedChanged="RadioButton11_CheckedChanged"/>
            <asp:RadioButton ID="RadioButton12" runat="server" Text="魅族" GroupName="Phone" OnCheckedChanged="RadioButton12_CheckedChanged"/>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="Button6" runat="server" Text="确认" OnClick="Button6_Click" />
            <br />
            <hr />
            <div id="div_chk" style="width: 900px;border:1px outset #dd9900;margin:0 auto;background:#ffd800;" runat="server">
            选择你学过的课程：
            <br />
            <asp:CheckBox ID="chk1" Text="数据库原理"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk2" Text="经济学"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk3" Text="管理学"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk4" Text="电子商务"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk5" Text="C语言"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk6" Text="计算机网络"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk7" Text="操作系统"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk8" Text="数据结构"  Width="160px" runat="server" />
            <asp:CheckBox ID="chk9" Text="计算机基础"  Width="160px" runat="server" />
            <br />
            <asp:Button ID="Button7" runat="server" Text="确定" OnClick="Button7_Click" />
            <br />
                <asp:TextBox ID="TextBox5" TextMode="MultiLine" Rows="6" runat="server"></asp:TextBox>
            </div>
        </div>
    </form>
</body>
</html>
