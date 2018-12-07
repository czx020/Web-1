<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="mybean.*" %>
<jsp:useBean id="code1" class="mybean.CodeConv" scope="page"/>
<%
//request.setCharacterEncoding("UTF-8");
//response.setCharacterEncoding("UTF-8");
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'addemployee_action.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<%
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			//String url = "jdbc:mysql://localhost:3306/hrms1";
			//String strUser = "root";
			//String strPassword = "";
			//conn = DriverManager.getConnection(url, strUser, strPassword);
			//out.println("<h2>本地协议纯Java 驱动程序连接MySQL数据库成功!</h2>");
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrms1?user=root&password=&useUnicode=true&characterEncoding=UTF8");
			
			String username = code1.toUTF8(request.getParameter("username"));
			String employeeid = code1.toUTF8(request.getParameter("employeeid"));
			//System.out.println(username);
			String sex = code1.toUTF8(request.getParameter("sex"));
			String branch = code1.toUTF8(request.getParameter("branch"));
			String birthday = code1.toUTF8(request.getParameter("birthday"));
			String nativeplace = code1.toUTF8(request.getParameter("nativeplace"));
			String marriage = code1.toUTF8(request.getParameter("marriage"));
			String identityid = code1.toUTF8(request.getParameter("identityid"));
			String politics = code1.toUTF8(request.getParameter("politics"));
			String folk = code1.toUTF8(request.getParameter("folk"));
			String education = code1.toUTF8(request.getParameter("education"));
			String department = code1.toUTF8(request.getParameter("department"));
			String graduatedate = code1.toUTF8(request.getParameter("graduatedate"));
			String university = code1.toUTF8(request.getParameter("university"));
			String position = code1.toUTF8(request.getParameter("position"));
			String incumbency = code1.toUTF8(request.getParameter("incumbency"));
			String incumbencytype = code1.toUTF8(request.getParameter("incumbencytype"));
			String resume = code1.toUTF8(request.getParameter("resume"));

			String sql = "insert into employee value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stm = conn.prepareStatement(sql);
			stm.setString(1, employeeid);
			stm.setString(2, username);
			stm.setString(3, sex);
			stm.setString(4, branch);
			stm.setString(5, birthday);
			stm.setString(6, nativeplace);
			stm.setString(7, marriage);
			stm.setString(8, identityid);
			stm.setString(9, politics);
			stm.setString(10, folk);
			stm.setString(11, education);
			stm.setString(12, department);
			stm.setString(13, graduatedate);
			stm.setString(14, university);
			stm.setString(15, position);
			stm.setString(16, incumbency);
			stm.setString(17, incumbencytype);
			stm.setString(18, resume);

			//ResultSet rs=stm.executeQuery(sql);
			int n = stm.executeUpdate();//n表示所影响的行数
			if (n >= 1) {
				out.print("<script Language='javascript'>window.alert('员工添加成功，返回员工档案信息页面！')</script>");
				out.print("<script Language='javascript'>window.location='index.jsp'</script>");
			} else {
				out.print("<script Language='javascript'>window.alert('员工添加失败，返回员工档案信息页面！')</script>");
				out.print("<script Language='javascript'>window.location='index.jsp'</script>");

			}
	%>

	<%
		//rs.close();
			stm.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			out.println(e.getMessage());
		} catch (SQLException e) {
			out.println(e.getMessage());
		} finally {
			try {
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
	%>




</body>
</html>
