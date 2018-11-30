<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.vitan.*"%>
<jsp:useBean id="g" class="com.vitan.Circle" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Circle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>

<body>
	<p>圆的半径是：<%=g.getRadius()%>
	<p>圆的面积是：<%=g.CircleArea()%>
	<p>圆的周长是：<%=g.CircleLength()%>
</body>
</html>
