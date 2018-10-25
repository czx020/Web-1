<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix = "computer" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex3_3.1.jsp' starting page</title>

  </head>
  
  <body>
   	<%
    String a = request.getParameter('a');
    String b = request.getParameter('b');
    String c = request.getParameter('b');
    %>
    <h3>以下是调用tag 文件的效果：</h3>
    <computer:Triangle sizeA="a" sizeB="b" sizeC="c" />
  </body>
</html>
