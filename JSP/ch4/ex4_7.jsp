<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex4_7.jsp' starting page</title>
  </head>
  
  <BODY bgcolor=cyan><FONT size=2 ></FONT>
   <FORM action="sum.jsp" method=post name=form>
       选择计算和的方式:<br>
       <Select name="sum" size=3>
          <Option Selected value="1">计算1到n的连续和
          <Option value="2">计算1到n的平方和
          <Option value="3">计算1到n的立方和
       </Select>
       <br>选择n的值：<br>
       <Select name="n" >
          <Option value="10">n=10
          <Option value="20">n=20
          <Option value="30">n=30
          <Option value="40">n=40
          <Option value="50">n=50
          <Option value="100">n=100
       </Select>
       <br><INPUT TYPE="submit" value="提交你的选择" name="submit">
   </FORM>
  </body>
</html>
