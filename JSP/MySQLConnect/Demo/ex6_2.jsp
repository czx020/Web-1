<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex6_2.jsp' starting page</title>
    
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
   <FORM action="inquire.jsp" Method="post" >
   输入数据库名: <Input type=text name="dataBaseName" size=8>
   输入表的名字: <Input type=text name="tableName"  size=8>  
  <br>输入用户名：<Input type=text name="user" size=6>(默认是root)
   输入密码：  <Input type="password" name="password" size=6>(默认是空)     
  <br><Input type=submit name="g" value="提交">
</Form>
  </body>
</html>
