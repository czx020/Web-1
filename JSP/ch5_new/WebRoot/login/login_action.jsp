<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="mybean.LoginBean" %>
<jsp:useBean id="login" class="mybean.LoginBean" scope="page"/>
<jsp:setProperty property="*" name="login"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <link href="css/css1.css" rel="stylesheet" type="text/css">
  </head>
  
  <body>
   <%
   int i=login.check();
 //  System.out.print(i);
   if(i==1){
	  session.setAttribute("flag", i);
    %>
  <div align="center">
    <h3>
   欢迎<font color="#ff0000"><jsp:getProperty name="login" property="username"/></font>进入人事管理系统
   </h3>
    <table width="400" border="0" cellspacing="0" cellpadding="0">
           <tr>
             <td width="25%" height="30" align="center"><a href="index.jsp">档案管理</a></td>
             <td width="25%" align="center"><a href="#">培训管理</a></td>
             <td width="25%" align="center"><a href="#">奖惩管理</a></td>
             <td width="25%" align="center"><a href="javascript:if(window.confirm('是否确认退出系统？')){window.location.href='loginout.jsp';}">退出系统</a></td>
           </tr>
    </table>
    </div>
   <%
   }
   else{
    %>
   <h3>
  <%
  out.print("<script Language='javascript'>window.alert('登录失败！')</script>");
out.print("<script Language='javascript'>window.location='login.jsp'</script>");
  }
   %>
   </h3>
   
   
  </body>
</html>
