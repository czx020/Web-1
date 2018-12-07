<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="inc/check.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>查询员工档案信息</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/css1.css" rel="stylesheet" type="text/css">
</head>

<body>
	<% 
	Connection conn=null;
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3306/hrms1";
		String strUser="root";
		String strPassword="";
		conn=DriverManager.getConnection(url,strUser,strPassword);
//out.println("<h2>本地协议纯Java 驱动程序连接MySQL数据库成功!</h2>");

   Statement stm=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
String sql="select EmployeeID,UserName,Sex,Birthday,NativePlace,Marriage,IdentityID,Folk from employee ";
ResultSet rs=stm.executeQuery(sql);
%>
	<div align="center">
		<p>在职员工的基本信息</p>
		<p>&nbsp;</p>
	</div>
	<table width="680" border="1" align="center" cellpadding="0"
		cellspacing="0">
		<tr bgcolor="#CCCCCC">
			<th width="10%" height="40" align="center" valign="middle">员工编号</th>
			<th width="10%" align="center" valign="middle">员工姓名</th>
			<th width="8%" align="center" valign="middle">员工性别</th>
			<th width="14%" align="center" valign="middle">出生日期</th>
			<th width="14%" align="center" valign="middle">员工籍贯</th>
			<th width="10%" align="center" valign="middle">婚姻状况</th>
			<th align="center" valign="middle">身份证号</th>
			<th width="7%" align="center" valign="middle">民族</th>
            <th width="15%" align="center" valign="middle">操作</th>
		</tr>

		<% 
		int p;//当前页
		int pagecount=3;//每页显示的记录数
		int rowcount;//总记录数
		int p2=1;//分段记录数
		int intpagecount;//总页数
		String page1=request.getParameter("page");
		if(page1==null||page1==""){//第一次访问页面时
		p=1;
		}
		else{//不是第一次访问页面时
		p=Integer.parseInt(page1);
		}
		rs.last();//游标移动到最后一行
		rowcount=rs.getRow();//获得游标所指向的行号，得到总记录数
		intpagecount=(rowcount%pagecount==0)?(rowcount/pagecount):(rowcount/pagecount+1);//得到总页数
		if(p<1)
		p=1;
		if(p>intpagecount)
		p=intpagecount;
		rs.beforeFirst();//游标移动到初始状态
		while(rs.next()) {
		if(p2>(p-1)*pagecount&&p2<=p*pagecount){
		%>
		<tr>
			<td height="30" align="center" valign="middle"><%=rs.getString("EmployeeID") %></td>
			<td align="center" valign="middle"><%=rs.getString("UserName") %></td>
			<td align="center" valign="middle"><%=rs.getString("Sex") %></td>
			<td align="center" valign="middle"><%=rs.getString("Birthday") %></td>
			<td align="center" valign="middle"><%=rs.getString("NativePlace") %></td>
			<td align="center" valign="middle"><%=rs.getString("Marriage") %></td>
			<td align="center" valign="middle"><%=rs.getString("IdentityID") %></td>
			<td align="center" valign="middle"><%=rs.getString("Folk") %></td>
           <!--  <td align="center" valign="middle"><a href="delemployee.jsp?id=<%=rs.getString("EmployeeID") %>">删除</a></td> --> 
		<td align="center" valign="middle"><a href="javascript:if(window.confirm('是否确认删除？')){window.location.href='delemployee.jsp?id=<%=rs.getString("EmployeeID") %>';}">删除</a>&nbsp;<a href="addemployee.jsp">添加</a> <a href="modemployee.jsp?id=<%=rs.getString("EmployeeID") %>">修改</a></td>
		</tr>
		<% }
		++p2;
		}
		 %>

	</table>
	<div align="center">
<form action="index.jsp" method="post" >
<table width="500" border="0" align="center" cellpadding="0" cellspacing="0">

    <tr> 
      <td align="center">第<%=p %>页  共<%=intpagecount %>页</td>
      <td>
      <%
      if(p>1){
       %>
      <a href="index.jsp?page=1">第一页</a> <a href="index.jsp?page=<%=p-1 %>">上一页</a> 
      <%} %>  
      <%if(p<intpagecount) {%>
      <a href="index.jsp?page=<%=p+1 %>">下一页</a> <a href="index.jsp?page=<%=intpagecount %>">最后一页</a> 
            <%} %>  
      </td>
      <td>转到第<input name="page" type="text" id="page">页　<input type="submit" value="GO"></td>
    </tr>

</table>
</form>
	
	</div>
	<% 
  rs.close();
  stm.close();
  conn.close();
}catch(ClassNotFoundException e)
	{
		out.println(e.getMessage());
	}
	catch(SQLException e)
	{
		out.println(e.getMessage());
	}
	finally
	{
		try
		{
			if (conn!=null)
				conn.close();}
		catch(Exception e){}
	}
 %>



</body>
</html>
