<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>

  </head>
  
  <body bgcolor = cyan>
  <font size = 2></font>
  <%
  int count = ((Integer)session.getAttribute("count")).intValue();
  int num = ((Integer)session.getAttribute("save")).intValue();
  %>
	<p>恭喜你！猜对了呢！<p>
	<br>
	你一共猜了<%= count %>次，这个数字就是:<%= num %>
	<br>
	单击链接返回 inputGuess.jsp 页面。
	<br>
	<a href = "inputGuess.jsp"> inputGuess</a>
  </body>
</html>
