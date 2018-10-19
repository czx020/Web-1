<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String name1 = request.getParameter("name");
String pw1 = request.getParameter("pw");
session.setAttribute("name2", name1);
session.setAttribute("pw2", pw1);
if (session.getAttribute("name2") == null ||session.getAttribute("pw2") ==null )
response.sendRedirect("ex4_7");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  <form name="form1" method="post" action="ex4_7.jsp">
    <table width="300" border="1" align="center">
      <tr>
        <td height="30" colspan="2" align="center"><h1>登陆</h1></td>
      </tr>
      <tr>
        <td width="40%" height="30" align="right">账号：</td>
        <td height="30" align="left"><input name="name" type="text" id="name" size="20"></td>
      </tr>
      <tr>
        <td width="40%" height="30" align="right">密码：</td>
        <td height="30" align="left"><input name="pw" type="password" id="pw" size="20"></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" name="button" id="button" value="登陆">
          
          <input type="reset" name="button2" id="button2" value="重置"></td>
      </tr>
    </table>
    <br>
  </form>
  </body>
</html>
