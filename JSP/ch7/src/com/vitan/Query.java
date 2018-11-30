package com.vitan;
import java.sql.*;

public class Query {
	String databaseName = "";
	String tableName = "";
	String user = "";
	String password = "71017";
	StringBuffer queryResult;
	
	public Query() {
		// TODO Auto-generated constructor stub
		queryResult = new StringBuffer();
		try{  Class.forName("com.mysql.jdbc.Driver");
	    }
	    catch(Exception e){} 
	}

	public String getDatabaseName() {
		return databaseName;
	}

	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public StringBuffer getQueryResult() {
		Connection con;//声明数据库连接对象
	    Statement sql; //声明数据库操作对象
	    ResultSet rs;//声明结果集对象
	    try{  queryResult.append("<table border=1>"); //追加<table border=1>到result的末尾
	          String uri="jdbc:mysql://127.0.0.1/"+ databaseName;//连接数据库的路径
	          con=DriverManager.getConnection(uri,user,password);//建立与数据库的连接
	          DatabaseMetaData metadata=con.getMetaData();//创建元数据对象
	          ResultSet rs1=metadata.getColumns(null,null,tableName,null);
	          int number2=0;//是一计数器，表示字段的个数
	          queryResult.append("<tr>");//追加<tr>到result的末尾
	          while(rs1.next()){//输出表头
	             number2++;
	             String clumnName=rs1.getString(4);
	             queryResult.append("<td>"+clumnName+"</td>");
	          }
	          queryResult.append("</tr>");
	          sql=con.createStatement();
	          rs=sql.executeQuery("SELECT * FROM "+tableName);//执行查询语句
	          while(rs.next()){//输出表中的记录
	        	  queryResult.append("<tr>");
	               for(int k=1;k<=number2;k++) 
	            	   queryResult.append("<td>"+rs.getString(k)+"</td>");
	               queryResult.append("</tr>");
	          }
	          queryResult.append("</table>");
	rs1.close();
	rs.close();
	sql.close();
	          con.close();
	    }
	    catch(SQLException e){
	    	queryResult.append("请输入正确的用户名和密码");
	}
		return queryResult;
	}

}