<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>large.jsp</title>

  </head>
  
  <body bgcolor= cyan>
    <font size =2> </font>
    <Form action = "result.jsp" method = "get" name = form>
       猜大了，请再猜！<input type = "text" name = "boy">
    <input type = "submit" value = "送出" name = "submit">
    </Form>
  </body>
</html>
