<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'ex5.jsp' starting page</title>

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
	<p>请输入Email：<br>
	<form name="form1" method=get name=from action="">
		<input type="text" name="client" id="textfield" value="请输入Email">
		<input type="submit" name="button" id="button" value="提交">
	</form>
	<% String str = request.getParameter("cient");
		if (str != null) {
			int index = str.indexOf("@");
			if (index == -1) {
	%>
	<BR> 你的Email地址没有@.
	<% } else {
			int space = str.indexOf(" ");
			if (space == -1) {
	%><br> 你的Email地址有非法的空格.
	<% } else {
			int start = str.indexOf("@");
			int end = str.lastIndexOf("@");
			if (start != end) {
	%>  <BR>你的Email地址有两个以上@.
	<%
		} else {
			out.print("<br>" + str);
	%> <BR>你的Email地址输入正确。
	<%
				}
			}
		}
	}
	%>
</body>
</html>
