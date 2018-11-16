<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%@ variable name-given="queryResultByNumber" scope="AT_END" %>
<%  StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    int n=0;
    try{  result.append("<table border=1>"); 
          String uri=
          "jdbc:mysql://127.0.0.1/warehouse?"+
          "user=root&password=&characterEncoding=utf-8";
          con=DriverManager.getConnection(uri);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,"product",null);
          int number1=0;
          result.append("<tr>");
          while(rs1.next()){
             number1++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          String condition=
          "SELECT * FROM product Where number ='"+number+"'";
          rs=sql.executeQuery(condition);
          while(rs.next()){
             result.append("<tr>");
             for(int k=1;k<=number1;k++) 
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
          result.append(e);
    }
    jspContext.setAttribute("queryResultByNumber",new String(result)); 
%> 
