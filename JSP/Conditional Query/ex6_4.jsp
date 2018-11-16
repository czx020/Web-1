<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex6_4.jsp' starting page</title>
    
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
   <FORM action="byNumber.jsp" Method="post">
 根据产品号查询
<BR>输入产品号:<Input type=text name="number">
<Input type=submit name="g" value="提交">
</Form>
<FORM action="byPrice.jsp" Method="post">
  根据价格查询
  <BR> 价格在<Input type=text name="priceMin" size=5>至
        <Input type=text name="priceMax" size=5>之间
        <Input type=submit  value="提交">
</Form>
  </body>
</html>
