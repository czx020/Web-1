<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ex_4_6.jsp' starting page</title>
  </head>
  
  <body>
  <FORM action="answer.jsp" method=post name=form>
  <table width="200" border="1" align="center">
    <tr>
      <td align="left"> 球王"贝利"是哪个国家的人</td>
    </tr>
    <tr>
      <td >
       <INPUT type="radio" name="R" value="巴西">巴西
       <INPUT type="radio" name="R" value="德国">德国
       <INPUT type="radio" name="R" value="美国">美国
       <INPUT type="radio" name="R" value="法国" checked="ok">法国</td>
    </tr>
    <tr>
      <td>下列足球队中,哪些队曾获得过世界杯冠军：</td>
    </tr>
    <tr>
      <td >
       <INPUT type="checkbox" name="item" value="法国国家队" >法国国家队
       <INPUT type="checkbox" name="item" value="中国国家队" >中国国家队
       <INPUT type="checkbox" name="item" value="巴西国家队" >巴西国家队
       <INPUT type="checkbox" name="item" value="美国国家队" >美国国家队
       </td>
    </tr>
    <tr>
      <td align="center">
      <INPUT TYPE="hidden" value="喜欢世界杯!" name="secret">
      <input type="submit" name="button" id="button" value="提交">
      <input type="reset" name="button2" id="button2" value="重置">
      </td>
    </tr>
  </table>
 </FORM>
</body>
</html>
