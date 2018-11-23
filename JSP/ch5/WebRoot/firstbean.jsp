<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="mybean.FirstBean" %>
<jsp:useBean id="login" scope="page" class="mybean.FirstBean"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'firstbean.jsp' starting page</title>
    
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
//login.setUsername("kd");
//login.setPassword("111111");

 %>
 <jsp:setProperty property="username" name="login" value="kd2"/>
 
  <jsp:setProperty property="password" name="login" value="222222"/>
 
<h3>
应用getProperty动作标记获得的值为：
</h3>
用户名：
<jsp:getProperty property="username" name="login"/>
<br>
密码：
<jsp:getProperty property="password" name="login"/>
<br>
  </body>
</html>
