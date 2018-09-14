<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex7.jsp' starting page</title>
    
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
  <table width="318" border="1" align="center">
    <tr>
      <td height="30" colspan="2" align="center">请输入三角形的三边abc的长度</td>
    </tr>
    <tr>
      <td width="70%" height="30">请输入三角形a边长度</td>
      <td height="30"><input type="text" name="textfield" id="textfield"></td>
    </tr>
    <tr>
      <td width="70%" height="30">请输入三角形b边长度</td>
      <td height="30"><input type="text" name="textfield2" id="textfield2"></td>
    </tr>
    <tr>
      <td width="70%" height="30">请输入三角形c边长度</td>
      <td height="30"><input type="text" name="textfield3" id="textfield3"></td>
    </tr>
    <tr>
      <td height="30" colspan="2">　　　　
        <input type="submit" name="button" id="button" value="提交">   
        　　　　
          <input type="reset" name="button2" id="button2" value="重置"></td>
    </tr>
    
    <% String string_a=request.getParameter("a").trim(); 
       String string_b=request.getParameter("b").trim(); 
       String string_c=request.getParameter("c").trim(); 
       	double a=0;b=0;c=0;
       	if(string_a==null){
       	   string_a="0";
       	   string_b="0";
       	   string_c="0";
       	   }
   		try{a=Double.valueOf(string_a).doubeValue();  
   			b=Double.valueOf(string_b).doubeValue();
   			b=Double.valueOf(string_c).doubeValue();	   
     %>
  </table>
</body>
</html>
