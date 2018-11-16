<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'random.jsp' starting page</title>
    
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
    <% String dName=request.getParameter("databaseName");
     String tName=request.getParameter("tableName");
     String id=request.getParameter("user");
     String secret=request.getParameter("password");
     String n=request.getParameter("count");
  %>
  <inquire:RandomQuery databaseName="<%=dName%>"
                       tableName="<%=tName%>" 
                       user="<%=id%>" 
                       password="<%=secret%>" 
                       count="<%=n%>"/>
   在<%=biao%>表随机查询到<%=randomCount%>条记录:
   <%--biao和randomCount是Tag文件返回的对象--%>
   <BR> <%=queryResult %>      <%--queryResult是Tag文件返回的对象--%>
  </body>
</html>
