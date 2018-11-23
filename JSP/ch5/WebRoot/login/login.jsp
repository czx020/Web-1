<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<script language="javascript">
 function check(){
	var username=document.all('username').value;
	var pw=document.all('pw').value;
	if(username.length==0)
	{
	alert("用户名不能为空");
	return false;
	}
	else if(pw.length==0){
		alert("密码不能为空");
		return false;
		}
		}


</script>
  </head>
 
  <body>
   <% 
 // System.out.print(basePath);
  %>
  
     <div align="center">
    <form name="form1" method="post" action="<%=basePath %>login/login_action.jsp" onSubmit="return check()">
      <table width="400" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="40%" height="30" align="right">用户名：</td>
          <td align="left"><input name="username" type="text" id="username" size="15" maxlength="15"></td>
        </tr>
        <tr>
          <td height="30" align="right">密　码：</td>
          <td align="left"><input name="pw" type="text" id="pw" size="15" maxlength="15"></td>
        </tr>
        <tr>
          <td height="30" colspan="2" align="center"><input type="submit" name="button" id="button" value="提交">
            　
            <input type="reset" name="button2" id="button2" value="重置"></td>
        </tr>
      </table>
    </form>
  </div>
  </body>
</html>
