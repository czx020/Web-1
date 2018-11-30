<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.vitan.Student" %>
<jsp:useBean id="zhang" class="com.vitan.Student" scope="page"></jsp:useBean>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Student2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
    <form  Method="post">
		姓名:<input type=text name="name"> <br>
	            学好:<input type=text name="number"> <br> 
		身高:<input type=text name="height"> <br>
		体重:<input type=text name="weight"> <br>
			<input type="submit" value="提交">
	</form>
	<jsp:setProperty name="zhang" property="*" />
	
	名字是:<jsp:getProperty name="zhang" property="name" /><br>
	学号是:<jsp:getProperty name="zhang" property="number" /><br>
	身高是:<jsp:getProperty name="zhang" property="height" />米<br>
	体重是:<jsp:getProperty name="zhang" property="weight" />公斤<br>
  </body>
</html>
