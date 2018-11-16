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
    
    <title>My JSP 'byNumber.jsp' starting page</title>
    
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
   <% String number=request.getParameter("number");
   if(number==null)
      number ="";
/*
   byte [] bb =number.getBytes("iso-8859-1");
   number=new String(bb);
*/
%>
 <inquire:NumberConditon number="<%=number%>" /> 
 根据产品号<%=number%>查询到的记录:
<BR><%=queryResultByNumber%>  <%--queryResultByNumber是Tag文件返回的对象--%>
  </body>
</html>
