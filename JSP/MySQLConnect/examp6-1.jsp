<%@page import="javax.swing.text.AbstractDocument.Content"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>examp6-1.jsp</title>

  </head>
  
  <body bgcolor = cyan> 
  <%
  Connection con;
  Statement sql;
  ResultSet rs;
  try{Class.forName("com.mysql.jdbc.Driver");
  }
  catch(Exception e){}
  try{String uri = "jdbc:mysql://127.0.0.1/vitan";
  	 String user = "root";
  	 String password = "";
  	 con = DriverManager.getConnection(uri,user,password);
  	 sql = con.createStatement();
  	 rs = sql.executeQuery("SELECT * FROM product");
  	 out.print("<table border = 2");
  	 out.print("<tr>");
  	 	out.print("<th width = 100>"+"产品编号"+"</th>");
  	 	out.print("<th width = 100>"+"产品品牌"+"</th>");
  	 	out.print("<th width = 50>"+"生产日期"+"</th>");
  	 	out.print("<th width = 50>"+"价格"+"</th>");
  	 out.print("</tr>");
  	 while(rs.next()){
  	 	out.print("<tr>");
  	 		out.print("<td>"+rs.getString(1)+"</td>");
  	 		out.print("<td>"+rs.getString(2)+"</td>");
  	 		out.print("<td>"+rs.getDate("mateTime")+"</td>");
  	 		out.print("<td>"+rs.getFloat("price")+"</td>");
  	 	out.print("</tr>");
  	 	}
  	 out.print("</table>");
  	 rs.close();
  	 sql.close();
  	 con.close();
	}
	catch(SQLException e){
		out.print(e);
		}
   %>
  </body>
</html>
