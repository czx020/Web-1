<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'answer.jsp' starting page</title>
    
  </head>
  
<BODY bgcolor=cyan><Font size=2>
   <%  int score=0;
       String countryName=request.getParameter("R");
       String itemNames[]=request.getParameterValues("item");
       String secretMess=request.getParameter("secret");
       if(countryName.equals("巴西"))
       {  score++;
       }
       if(itemNames==null)
       {  out.print("没有选择球队<br>");
       }
       else
       {  if(itemNames[0].equals("法国国家队")&&
             itemNames[1].equals("巴西国家队"))
          {  score++;
          }
           
       }
      out.print("您的得分:"+score);
      out.print("<br>您提交的答案一:"+countryName);
      out.print("<br>您提交的答案二:");
      if(itemNames!=null)
       for(int k=0;k<itemNames.length;k++)
       { out.println(" "+itemNames[k]);
       }
      out.println("<br> 您提交的隐藏信息:"+secretMess); 
 %>
</FONT>
</BODY>
</html>
