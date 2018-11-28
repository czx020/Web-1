<%@ Page Language="C#" Debug=true AutoEventWireup="true" CodeFile="yonghuzhuce.aspx.cs" Inherits="yonghuzhuce" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 80px;
        }
          td
        {padding:5px;
         color:#444;
         border:1px solid #dedede;
            }
         table
         {  width:399px;
            background-image:url("tablebeijing.jpg");
            
             }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table >
            <tr>
                <td class="style1"> 读者编号： </td>
                 <td>  <asp:TextBox ID="txtusername" runat="server"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="txtusername">必须输入用户名</asp:RequiredFieldValidator>
                </td>
            </tr>  
               <tr>
                <td >密码：</td>
                  <td><asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox> </td> 
                 <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpassword">密码不能为空!</asp:RequiredFieldValidator></td>
            </tr>  
             <tr>
                <td >
                   确认密码：
                </td>
                <td>
                    <asp:TextBox ID="txtrepassword" runat="server" TextMode="Password"></asp:TextBox>  
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="CompareValidator" ControlToCompare="txtpassword" 
                        ControlToValidate="txtrepassword">两次输入密码的密码不同！</asp:CompareValidator></td>
            </tr>  
            <tr>
                <td class="style1">读者姓名： </td>
                 <td>  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>
                <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="RequiredFieldValidator" ControlToValidate="txtusername">必须输入读者姓名</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">读者类型： </td>
                 <td>  
                     <asp:DropDownList ID="DropDownList1" runat="server">
                         <asp:ListItem>学生</asp:ListItem>
                         <asp:ListItem>教师</asp:ListItem>
                     </asp:DropDownList> </td>
                <td> 
                </td>
            </tr>
            <td class="style1">读者性别： </td>
                 <td>  
                     <asp:DropDownList ID="DropDownList2" runat="server">
                         <asp:ListItem>男</asp:ListItem>
                         <asp:ListItem>女</asp:ListItem>
                     </asp:DropDownList> </td>
                <td> 
                </td>
            </tr>
            <tr><td colspan="3"><asp:Button ID="but" runat="server" Text="确定" 
                    onclick="but_Click" /> 
                <asp:Button ID="Button1" runat="server" Text="返回登录" onclick="Button1_Click" /></td></tr>  
            
            <tr><td colspan="3">
               <a href="denglu.aspx">返回登录页面
         </a>
            </td></tr>     
            </table>  
    </div>
    <asp:Label ID="lblpass" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
