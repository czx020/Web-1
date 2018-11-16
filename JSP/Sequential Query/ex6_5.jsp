<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex6_5.jsp' starting page</title>
    
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
   <FORM action="" method=post name=form>
   排序记录：<INPUT type="radio" name="orderType" value="price">按价格(price)排序 
   <INPUT type="radio" name="orderType" value="madeTime">按生产日期(madeTime)排序 
   <Input type=submit name="g" value="提交">
</Form>
<% String orderType=request.getParameter("orderType");
   if(orderType==null)
     orderType="";
%>
  <inquire:SortTag orderType="<%=orderType%>" /> 
  根据排序方式:<%=orderType%>,排序的记录:
<BR> <%=orderResult%>  <%-- orderResult是Tag文件返回的对象 --%>
  </body>
</html>
