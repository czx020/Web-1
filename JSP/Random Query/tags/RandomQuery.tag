<%@ tag pageEncoding="utf-8" %>
<%@ tag import="java.sql.*" %>
<%@ tag import="java.util.*" %>
<%@ attribute name="databaseName" required="true" %>
<%@ attribute name="tableName" required="true" %> 
<%@ attribute name="user" required="true" %>  
<%@ attribute name="password" required="true" %> 
<%@ attribute name="count" required="true" %> 
<%@ variable name-given="biao" scope="AT_END" %>
<%@ variable name-given="queryResult" scope="AT_END" %>
<%@ variable name-given="randomCount" scope="AT_END" %>
<%
    Vector vector=new Vector();//创建向量对象vector
    StringBuffer result;
    result=new StringBuffer();//创建字符串缓冲区对象
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
    int n=0,m=0;//取最小数
    try{  result.append("<table border=1>"); 
          String uri= "jdbc:mysql://127.0.0.1/"+databaseName;
          con=DriverManager.getConnection(uri,user,password);
          DatabaseMetaData metadata=con.getMetaData();
          ResultSet rs1=metadata.getColumns(null,null,tableName,null);
          int number1=0;
          result.append("<tr>");
          while(rs1.next()){
             number1++;
             String clumnName=rs1.getString(4);
             result.append("<td>"+clumnName+"</td>");
          }
          result.append("</tr>");
          sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                                    ResultSet.CONCUR_READ_ONLY);
          rs=sql.executeQuery("SELECT * FROM "+tableName);
          rs.last();//使游标移动到结果集的最后一行
          int rowNumber=rs.getRow();//获取当前游标所指的行号
          int number=rowNumber;    //获取记录数
          for(int i=1;i<=number;i++)
             vector.add(new Integer(i));//添加i到vector中
          m=Math.min(Integer.parseInt(count),number);//取最小数
          n=m;
          while(n>0){
              int i=(int)(Math.random()*vector.size());  
              //从vector中随机抽取一个元素：
              int index=((Integer)vector.elementAt(i)).intValue();
              rs.absolute(index);           //游标移到这一行
              result.append("<tr>");
              for(int k=1;k<=number1;k++) 
                 result.append("<td>"+rs.getString(k)+"</td>");
              result.append("</tr>");
              n--; 
              vector.removeElementAt(i);   //将抽取过的元素从vector中删除
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
    jspContext.setAttribute("queryResult",new String(result));//返回queryResult对象 
    jspContext.setAttribute("biao",tableName);//返回biao对象 
    jspContext.setAttribute("randomCount",String.valueOf(m));//返回randomCount对象 
%>
