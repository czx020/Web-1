<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>inputGuess.jsp' starting page</title>


  </head>
  
  <body>
    <p>随机分给一个1到100之间的数，请开始猜吧！</p>
    <%
    int number = (int)(Math.random()*100) +1;
    session.setAttribute("count", new Integer(0));
    session.setAttribute("save", new Integer(number));
     %>
     <Form Action = "result.jsp" Method= "post" Name = form >
     	输入你的猜测：<input type = "text" name = "boy">
     	<input type = "submit" value = "送出" name = "submit">
	</Form>
  </body>
</html>
