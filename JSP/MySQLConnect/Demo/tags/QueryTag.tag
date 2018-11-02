<%@ tag pageEncoding="UTF-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="dataBaseName" required="true" %>
<%@ attribute name="tableName" required="true" %> 
<%@ attribute name="user" required="true" %>  
<%@ attribute name="password" required="true" %>  
<%@ variable name-given="biao" scope="AT_END" %>
<%@ variable name-given="queryResult" scope="AT_END" %>
<%  StringBuffer result;//声明字符串缓冲区     
    result=new StringBuffer();
    try{  Class.forName("com.mysql.jdbc.Driver");//加载mysql驱动程序
    }
    catch(Exception e){} 
    Connection con;//声明数据库连接对象
    Statement sql; //声明数据库操作对象
    ResultSet rs;//声明结果集对象
    try{  result.append("<table border=1>"); //追加<table border=1>到result的末尾
          String uri="jdbc:mysql://127.0.0.1/"+dataBaseName;//连接数据库的路径
          con=DriverManager.getConnection(uri,user,password);//建立与数据库的连接
          DatabaseMetaData metadata=con.getMetaData();//创建元数据对象
          ResultSet rs1=metadata.getColumns(null,null,tableName,null);
          int number2=0;//是一计数器，表示字段的个数
          result.append("<tr>");//追加<tr>到result的末尾
          while(rs1.next()){//输出表头
             number2++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          rs=sql.executeQuery("SELECT * FROM "+tableName);//执行查询语句
          while(rs.next()){//输出表中的记录
               result.append("<tr>");
               for(int k=1;k<=number2;k++) 
                  result.append("<td>"+rs.getString(k)+"</td>");
               result.append("</tr>");
          }
          result.append("</table>");
rs1.close();
rs.close();
sql.close();
          con.close();
    }
    catch(SQLException e){
          result.append("请输入正确的用户名和密码");
}
//返回对象queryResult： 
    jspContext.setAttribute("queryResult",new String(result)); 
    jspContext.setAttribute("biao",tableName);          //返回biao对象
%> 
