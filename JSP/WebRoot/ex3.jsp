<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex3.jsp' starting page</title>
    
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
   <%! 
   final double PI=Math.PI;
   double r;
   double getArea(double a){
   		return PI*a*a;
   		}
   double getLength(double a){
   		return 2*PI*a;
   		}
   	%>
   	<% 
   	r = 100;
   		out.println("调用 getArea 方法计算半径是"+r+"的圆的面积是:");
   		double area = getArea(r);
   		out.println(area);
   		r = 50;
   		out.println("<BR>调用 getLengh 方法计算半径是"+r+"的圆的周长是:");
   		double length = getLength(r);
   		out.println(length);
    %>
  </body>
</html>
