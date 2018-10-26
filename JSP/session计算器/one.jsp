<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix = "person" tagdir = "/WEB-INF/tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  
    <title>My JSP 'one.jsp' starting page</title>

  </head>
  
  <body>
    <p>欢迎访问本站。</p>
    <person:Count/>
    <a href = "two.jsp">传送到two.jsp</a>
  </body>
</html>
