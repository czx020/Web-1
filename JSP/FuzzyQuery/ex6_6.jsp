<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="inquire"%>
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
    
    <title>My JSP 'ex6_6.jsp' starting page</title>
    
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
   选择:<Select name="ziduan">
         <Option value="name">产品名称 </option>

         <Option value="number">产品号 </option>
    </Select>
   含有:<INPUT type="text" name="keyWord" > 
        <Input type=submit name="g" value="提交">
</Form>
<%  String ziduan=request.getParameter("ziduan");
    String keyWord=request.getParameter("keyWord");
    if(ziduan==null||keyWord==null){
       ziduan="";
       keyWord="";
    }
/*
    byte bb[]=keyWord.getBytes("iso-8859-1");
    keyWord=new String(bb);
*/
    out.println("关键字 "+keyWord);
%>
 <inquire:KeyWord ziduan="<%=ziduan%>"  keyWord="<%=keyWord%>"  /> 
 查询到的记录:
<BR> <%=foundResult%>  <%--foundResult是Tag文件返回的对象 --%>
  </body>
</html>
