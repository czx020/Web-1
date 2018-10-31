<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SessionRead.aspx.cs" Inherits="SessionRead" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h3>Session的应：读取页</h3>

       <p>读取 ss_txt 的值：<asp:Label ID="lab_ss_txt" runat="server" ></asp:Label></p>

       <p> 读取ss_Sarr 的值：
       <asp:TextBox ID="txt_readSarr" runat="server" TextMode="MultiLine" Rows="5" ></asp:TextBox></p>
       
       <p>读取控件ss_cal:
           <asp:Panel ID="pnl_ss_cal" runat="server" CssClass="asppanel">
           </asp:Panel>
        
        </p>
        
    </div>
    </form>
</body>
</html>
