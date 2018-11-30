<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "com.vitan.Query" %>
<jsp:useBean id="base" class="com.vitan.Query" scope="page"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Query.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>

<body>
	<jsp:setProperty name="base" property="databaseName" value="vitan" />
	<jsp:setProperty name="base" property="tableName" value="product" />
	<jsp:setProperty name="base" property="user" value="root" />
	<jsp:setProperty name="base" property="password" value="" />

	在<jsp:getProperty name="base" property="tableName" />表查询到记录：
	<br><jsp:getProperty name="base" property="queryResult" />
</body>
</html>
