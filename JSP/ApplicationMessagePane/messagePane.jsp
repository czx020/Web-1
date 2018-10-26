<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
    
    <title>My JSP 'messagePane.jsp' starting page</title>
    
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
    <%! Vector<String> v=new Vector<String>();//创建向量对象
         int i=0; 
         ServletContext  application;//声明application
         synchronized void sendMessage(String s){
            application=getServletContext();//application初始化
            v.add(s);//添加s到v向量中
            application.setAttribute("Mess",v); //把v作为Mess的值
         }
     %> 
     <% String name=request.getParameter("peopleName");
        String title=request.getParameter("Title");
        String messages=request.getParameter("messages");
           if(name==null||name=="")
              name="guest"+(int)(Math.random()*10000);//(int)(Math.random()*10000)的范围是0-10000
           if(title==null||title=="")
           {
              title="无标题";
              //title=new String(title.getBytes("iso-8859-1"),"utf-8");
           }   
           if(messages==null||messages=="")
           {
              messages="无信息";
             // messages=new String(messages.getBytes("iso-8859-1"),"utf-8"); 
              }
          SimpleDateFormat matter=new SimpleDateFormat("yyyy-MM-dd  HH:mm:ss");
          String time=matter.format(new Date());
          String s=name+"#"+title+"#"+time+"#"+messages;//便于存放到向量中 
          sendMessage(s);
          out.print("您的信息已经提交！");
     %>
  <A HREF="submit.jsp" >返回留言板</A> 
  <A HREF="showMessage.jsp" >查看留言板</A>
  </body>
</html>
