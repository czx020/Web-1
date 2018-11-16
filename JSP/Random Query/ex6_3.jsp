<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex6_3.jsp' starting page</title>
    
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
  <P> 随机查询记录.
<FORM action="random.jsp" Method="post" >
   输入数据库名: <Input type=text name="databaseName" size=8>
   <br>输入表的名字: <Input type=text name="tableName" size=15>  
   <br>输入用户名：<Input type=text name="user" size=6>(默认是root)
   <br>输入密码：  <Input type="password" name="password" size=3>(默认是空)  
   <br>输入查询的记录数：<Input type=text name="count" value=3>   
   <br><Input type=submit name="g" value="提交">
</Form>
  </body>
</html>
