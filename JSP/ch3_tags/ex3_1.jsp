<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix = "one" %>
<%@ taglib tagdir="/WEB-INF/tags/vitan" prefix = "two" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex3_1.jsp' starting page</title>
  </head>
  
  <body bgcolor=cyan>
    <h3>以下是调用Tag文件的效果：</h3>
    <one:AddSum/>
    <h3>以下是调用Tag文件的效果：</h3>
    <two:EvenSum/>
  </body>
</html>
