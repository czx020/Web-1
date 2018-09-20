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
    <title>two</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>

  <body bgcolor=cyan>
    <p><font size =2 color="red">This is two</font>
    <font size =3>
    <% String s = request.getParameter("number") ;
    		out.println("<br>传递过来的值是："+s);
    %>
    <br><img src="images/a.jpg" width="<%=s %>" height="<%=s %>"></img>
    </font>
  </body>
</html>
