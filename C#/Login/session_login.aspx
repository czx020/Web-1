<%@ Page Language="C#" AutoEventWireup="true" CodeFile="session_login.aspx.cs" Inherits="session_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function isempty() {
            var txt_id = document.getElementById("txt_userID");
            if (txt_id.value == "") {
                alert("请输入用户名!");
                txt_id.focus();
                return false;
                
            }
            else {return true;}
        
        }
    
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>登录界面</h3>
        <p class ="divTc">
            输入用户名：
            <asp:TextBox ID="txt_userID" runat="server"></asp:TextBox>
        </p>
        <p class="divTc">
            <asp:Button ID="btn_login" runat="server" Text="登录" onclick="btn_login_Click" OnClientClick="return isempty()" />
        </p>
    </div>
    </form>
</body>
</html>
