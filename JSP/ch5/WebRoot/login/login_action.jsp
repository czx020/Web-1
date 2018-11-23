<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="mybean.LoginBean" %>
<jsp:useBean id="login" class="mybean.LoginBean"/>
<jsp:setProperty property="*" name="login"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login_action.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
   int i=login.check1();
 //  System.out.print(i);
   if(i==1){
    %>
   <h3>
   欢迎<font color="#ff0000"><jsp:getProperty name="login" property="username"/></font>进入人事管理系统
   </h3>
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
