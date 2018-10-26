<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'submit.jsp' starting page</title>
    
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
    <FORM action="messagePane.jsp" method="post" name="form">
    <P>输入您的名字：
    <INPUT type="text" name="peopleName">
     <BR>
     <P>输入您的留言标题：
    <INPUT type="text" name="Title">
     <BR>
     <P>输入您的留言：
    <BR>
    <!--WRAP设置为physical表示文本区自动换行，以用户在文本区内看到的效果传输给服务器-->
    <TEXTAREA name="messages" ROWs="10" COLS=36 WRAP="physical" ></TEXTAREA>
    <BR>
    <INPUT type="submit" value="提交信息" name="submit">
 </FORM>
 <FORM action="showMessage.jsp" method="post" name="form1">
    <INPUT type="submit" value="查看留言板" name="look">
 </FORM>
  </body>
</html>
