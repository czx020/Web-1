<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sum.jsp' starting page</title>
    </head>
  
  <BODY bgcolor=cyan><FONT size=2>
 <% long sum=0;
    String s1=request.getParameter("sum");
    String s2=request.getParameter("n");
    if(s2.equals(""))
    {  s2="0";
    }
    if(s1.equals("1"))
    {  int n=Integer.parseInt(s2);
       for(int i=1;i<=n;i++)
       { sum=sum+i;
       }
    }
    else if(s1.equals("2"))
    {  int n=Integer.parseInt(s2);
       for(int i=1;i<=n;i++)
       { sum=sum+i*i;
       }
    }
    else if(s1.equals("3"))
    {  int n=Integer.parseInt(s2);
       for(int i=1;i<=n;i++)
       { sum=sum+i*i*i;
       }
    }
 %>
<P>您的求和结果是：<%=sum%>。
</FONT>
</BODY>
</HTML>
