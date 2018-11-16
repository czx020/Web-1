<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="keyWord" required="true" %>
<%@ attribute name="ziduan" required="true" %>
<%@ variable name-given="foundResult" scope="AT_END" %>
<%  
    String condition="SELECT * FROM product Where "+ziduan+
                   " like '%"+keyWord+"%'";
    StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    //int n=0;
    try{  result.append("<table border=1>"); 
          String uri=
         "jdbc:mysql://127.0.0.1/warehouse?"+
          "user=root&password=&characterEncoding=gb2312";
          con=DriverManager.getConnection(uri);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,"product",null);
          int number2=0;
          result.append("<tr>");
          while(rs1.next()){
             number2++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement();
          rs=sql.executeQuery(condition);
          while(rs.next()){
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
        result.append("请输入模糊查询条件");
     }
     //返回foundResult对象: 
     jspContext.setAttribute("foundResult",new String(result));
%>
