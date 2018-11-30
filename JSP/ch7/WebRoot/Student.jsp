<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.vitan.Student" %>
<jsp:useBean id="zhang" class="com.vitan.Student" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Student.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
	<jsp:setProperty name="zhang" property="name" value="张三" />
	名字是:<jsp:getProperty name="zhang" property="name" />
	<jsp:setProperty name="zhang" property="number" value="1999001" /><br>
	学号是:<jsp:getProperty name="zhang" property="number" />
	<jsp:setProperty name="zhang" property="height" value="<%=1.78 %>" /><br>
	身高是:<jsp:getProperty name="zhang" property="height" />米
	<jsp:setProperty name="zhang" property="weight" value="67.65" /><br>
	体重是:<jsp:getProperty name="zhang" property="weight" />公斤
</body>
</html>
