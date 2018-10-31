<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sample_02_targ.aspx.cs" Inherits="Sample_02_targ" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>QueryString传值，接收值页面</h3>
        <p>接收ID值，赋值给LABEL：
            <asp:Label ID="lab_id" runat="server" ></asp:Label>
        </p>

        <p>接收name值，赋值给LABEL：
            <asp:Label ID="lab_name" runat="server" ></asp:Label>
        </p>

        <p>接收chk值，赋值给LABEL：
            <asp:Label ID="lab_chk" runat="server" ></asp:Label>
        </p>

        <p>接收SOFT和WEBSITE值，赋值给LABEL：
            <asp:Label ID="lab_soft" runat="server" ></asp:Label>,
            <asp:Label ID="lab_website" runat="server" ></asp:Label>
        </p>


        
    </div>
    </form>
</body>
</html>
