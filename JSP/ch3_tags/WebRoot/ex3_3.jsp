<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix = "computer" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  
  <body>
  <form name="form1" method="post" action="">
    <table width="200" border="1" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="70%" height="30" align="right">三角形a边：</td>
        <td><input name="a" type="text" id="a" size="20%"></td>
      </tr>
      <tr>
        <td width="70%" height="30" align="right">三角形a边：</td>
        <td><input name="b" type="text" id="b" size="20%"></td>
      </tr>
      <tr>
        <td width="70%" height="30" align="right">三角形a边：</td>
        <td><input name="c" type="text" id="c" size="20%"></td>
      </tr>
      <tr>
        <td height="30" colspan="2"> <input type="submit" name="button" id="button" value="提交">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="button2" id="button2" value="重置"></td>
      </tr>
    </table>
    </form>
    </body>
</html>
