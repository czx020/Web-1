<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../inc/check.jsp" %>
<%
session.invalidate();//销毁session的值
out.print("<script Lanuage='JavaScript'>window.alert('成功退出')</script>"); 
//out.print("<script Lanuage='JavaScript'>window.open('login.jsp')</script>"); 
out.print("<script Lanuage='JavaScript'>window.parent.opener=null </script>"); 
out.print("<script Lanuage='JavaScript'>window.parent.close() </script>"); 
 %>