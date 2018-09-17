<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex8.jsp' starting page</title>
    
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
    <p> 请输入三角形的三边a,b,c的长度:
  	<FORM action="" method=post name=form>
  		<p>请输入三角形边a的长度：<INPUT type = "text" name="a">
  		<p>请输入三角形边c的长度：<INPUT type = "text" name="b">
  		<p>请输入三角形边c的长度：<INPUT type = "text" name="c">
  		<INPUT TYPE="submit" value="送出" name =sumbit>
  	</FORM>
    <%--获取用户提交的数据 --%>
	<% 
	   String string_a = request.getParameter("a").trim(),
              string_b = request.getParameter("b").trim(),
              string_c = request.getParameter("c").trim();
       	double a=0, b=0, c=0;

   	//判断字符串是否是空对象，如果是空对象就初始化
       	if(string_a==null){
       	   string_a="0";
       	   string_b="0";
       	   string_c="0";
       	   }
    //求出边长，计算面积
   		try{a=Double.valueOf(string_a).doubleValue();
   			b=Double.valueOf(string_b).doubleValue();
   			b=Double.valueOf(string_c).doubleValue();
        if (a+b>c&&a+c>b&&b+c>a) {
          double p = (a+b+c)/2.0;
          double miannji = Math.sqrt(p*(p-a)*(p-b)*(p-c));
          out.print("<br>"+"三角形面积：" + miannji);
        }
        else
          out.print("<br>"+"你输入的三边不能构成三角形");
        }
        catch(NumberFormatException e){
          out.print("<br>"+"请输入数字字符");
        }
        %>
  </body>
</html>
