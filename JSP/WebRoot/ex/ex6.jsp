<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex6.jsp' starting page</title>

  </head>
  
  <body bgcolor=cyan><font size=3></font>
 	<% double x=0.9,y=3; %>
 	<p>Sin(<%=x %>)除以<%=y %>等于<%=Math.sin(x)/y %>
 	<p><%=y %>的平方是:<%=Math.pow(y, 2) %>
 	<% x=19;y=32; %>
 	<p><%=x %>乘以<%=y %>等于<%=x*y %>
 	<p><%=y %>的平方根等于：<%=Math.sqrt(y) %>
 	<p><%=y %>大于<%=x %>吗？回答:<%=y>x %>
      </body>
</html>
