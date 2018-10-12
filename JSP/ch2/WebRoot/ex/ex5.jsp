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
</head>

<body>
	<p>请输入Email：<br>
	<form action="" name=form1 method=get>
		<input type="text" name="client"  value="请输入Email">
		<input type="submit" name="sumbit"  value="提交">
	</form>
	<% String str = request.getParameter("client");
		if (str != null) {
			int index = str.indexOf("@");
			if (index == -1) {
	%><BR> 你的Email地址没有@.
	<% } else {
			int space = str.indexOf(" ");
			if (space != -1) {
	%><br> 你的Email地址有非法的空格.
	<% } else {
			int start = str.indexOf("@");
			int end = str.lastIndexOf("@");
			if (start != end) {
	%>  <BR>你的Email地址有两个以上:@.
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
