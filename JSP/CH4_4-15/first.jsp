<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'first.jsp' starting page</title>
  </head>
  
  <body>
   First 页面，请输入你的姓名连接到 second.jsp
   <%
   String id = session.getId();
   out.println("<br>你的session对象id是：<br>"+id);
    %>
    <From action = "ch4/second.jsp" method = post name = from>
    <br>
    <input type = "text" name = "boy">
    <input type = "submit" value = "送出" name = submit>
	</From>
  </body>
</html>
