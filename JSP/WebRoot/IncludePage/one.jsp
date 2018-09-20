<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>one</title>
    <jsp:include page="head.txt"></jsp:include>
  </head>

  <body bgcolor=cyan >
 <form action="" method="GET" name="form">
            请输入1~100之间的整数：<input type="text" name="number">
            <br/> <input type="submit" value="送出" name="submit">
        </form>
<% String num = request.getParameter("number");
  		if (num == null)
  		num="0";
  		try{ int n = Integer.parseInt(num);
  			if ( n>=1&&n<=50) {
 %>
 	<jsp:forward page="two.jsp">
 	<jsp:param name = "number" value = "<%=n %>" />
 	</jsp:forward>
<% 	}
	else if ( n>50 && n<=100){
%>	<jsp:forward page="three.jsp">
	<jsp:param name = "number" value = "<%=n %>" />
	</jsp:forward> 
<%	}
	else if(n>100){
 %>	
	<jsp:forward page="error.jsp">
	<jsp:param value="<%=n%>" name="mess"/>
	</jsp:forward>
<%		}
	}
	catch(Exception e){	
 %> <jsp:forward page="error.jsp">
 	<jsp:param value="<%=e.toString() %>" name="mess"/>
 	</jsp:forward>
 <%} 
 %>
  </body>
</html>
