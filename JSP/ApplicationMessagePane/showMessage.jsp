<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
    
    <title>My JSP 'showMessage.jsp' starting page</title>
    
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
   <%  Vector<String> v=(Vector)application.getAttribute("Mess");
   if(v!=null){
      out.print("<table border=2>");
        out.print("<tr>");
           out.print("<td bgcolor=cyan>"+"留言者姓名"+"</td>");
           out.print("<td bgcolor=cyan>"+"留言标题"+"</td>");
           out.print("<td bgcolor=cyan>"+"留言时间"+"</td>");
           out.print("<td bgcolor=cyan>"+"留言内容"+"</td>");
           out.print("</tr>");
           
        for(int i=0;i<v.size();i++){
           //out.print("<tr>");
           String message=v.elementAt(i);
         //  message=new String(message.getBytes("iso-8859-1"),"utf-8");
      
             
          // byte bb[]=message.getBytes("iso-8859-1");
          // message=new String(bb);
           

           String a[]=message.split("#");//以#分割message存放到数组a中
           out.print("<tr>");
           int number=a.length-1;
           for(int k=0;k<=number;k++) {
              if(k<number)//不是数组a中的最后一个元素
                 out.print("<td bgcolor=cyan >"+a[k]+"</td>");
              else//是数组a中的最后一个元素
                out.print("<td><TextArea rows=3 cols=12>"+a[k]+"</TextArea> </td>");
           }
           out.print("</tr>");
        } 
        
      out.print("</table>");
    %>
 <A HREF="submit.jsp" >返回留言板</A> 
<%}
else
out.println("没有留言");
 %>
  </body>
</html>
