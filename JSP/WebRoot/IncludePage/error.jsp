<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <jsp:include page="head.txt"></jsp:include>
    <title>error</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>

  <body bgcolor=cyan>
    <p><font size=5 color=red>This is error.jsp</font>
    <font size=2>
    <% String s = request.getParameter("mess") ;
    		out.println("<br>传递过来的值是："+s);
    %>
    <br><img src="images/error.jpg" width="120" height="120"></img>
  </font>
  </body>
</html>
