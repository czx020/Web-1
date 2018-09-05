<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div
        {
            text-align : center
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Button" />
    <hr />
    <br />
        <asp:Button ID="Button1" runat="server" Text="1到10的和" onclick="Button1_Click" /><asp:Label
            ID="Label1" runat="server" Text="Label"></asp:Label>
    <hr />
    <br />
    <asp:RadioButton ID="RadioButton1" runat="server" Text="一加" GroupName="Phone"/>
    <asp:RadioButton ID="RadioButton2" runat="server" Text="锤子" GroupName="Phone"/>
    <asp:RadioButton ID="RadioButton3" runat="server" Text="三星" GroupName="Phone"/>
    <asp:RadioButton ID="RadioButton4" runat="server" Text="华为" GroupName="Phone"/>
    <br />
        <asp:Button ID="Button2" runat="server" Text="提交" onclick="Button2_Click" />
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
   <hr />
   <br />
   请输入0~120之间的数：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button4" runat="server" Text="确认" onclick="Button4_Click"/><br />
        <asp:Label ID="Label3" runat="server" ForeColor="red"></asp:Label><br />
        <asp:RadioButton ID="RB1" runat="server" GroupName="checkbum" Text="不及格"/>
        <asp:RadioButton ID="RB2" runat="server" GroupName="checkbum" Text="及格"/>
        <asp:RadioButton ID="RB3" runat="server" GroupName="checkbum" Text="良好"/>
        <asp:RadioButton ID="RB4" runat="server" GroupName="checkbum" Text="优秀"/>
    <hr />
    <br />
    <div style="border:1px solid #666#>
    你觉得董先生适不适合？
    <br />
    <br />
        <asp:RadioButton ID="RadioButton5" runat="server" GroupName="question" 
            Text="吼啊"  AutoPostBack="true" oncheckedchanged="RadioButton5_CheckedChanged"/>
        <asp:RadioButton ID="RadioButton6" runat="server" GroupName="question" 
            Text="无可奉告" AutoPostBack="true" oncheckedchanged="RadioButton6_CheckedChanged"/>
        <asp:RadioButton ID="RadioButton7" runat="server" GroupName="question" 
            Text="Navie" AutoPostBack="true" 
            oncheckedchanged="RadioButton7_CheckedChanged"/>
        <asp:RadioButton ID="RadioButton8" runat="server" GroupName="question" 
            Text="TooYoung" AutoPostBack="true" 
            oncheckedchanged="RadioButton8_CheckedChanged"/>
    <br />
      <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
    <br />
    <br />
        <asp:Button ID="Button5" runat="server" Text="提交" onclick="Button5_Click" Height="53px" Width="113px" />
    </div>
    </form>
</body>
</html>
