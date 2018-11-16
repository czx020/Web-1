<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="priceMax" required="true" %>
<%@ attribute name="priceMin" required="true" %>
<%@ variable name-given="queryResultByPrice" scope="AT_END" %>
<%  float max=Float.parseFloat(priceMax);
    float min=Float.parseFloat(priceMin);
    StringBuffer result;
    result=new StringBuffer();
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    int n=0;
    try{  result.append("<table border=1>"); 
          String uri="jdbc:mysql://127.0.0.1/warehouse";
          con=DriverManager.getConnection(uri,"root","");
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
          String condition=
         "SELECT * FROM product Where price <="+
          max+" AND "+"price >= "+min;
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
         result.append(e);
    }
    jspContext.setAttribute("queryResultByPrice",new String(result)); 
%>
