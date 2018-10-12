<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<form method="post" action="">
  <input type="text" name="ok"  />
  <input type="submit" name="sumbit"  value="提交" />
</form>
<% String a = request.getParameter("ok");
	if (a == null){
	a="1";
	}
	try {double number = Integer.parseInt(a);
		out.print(a+"平方根是:"+Math.sqrt(number));
	}
	catch(NumberFormatException e){
		out.print("<br>" +"请输入数字字符");
		
	}
	  %>
	 
</body>
</html>