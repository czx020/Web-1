<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
    request.setCharacterEncoding("UTF-8");
   response.setCharacterEncoding("UTF-8");
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
		Statement stm=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/hrms";
			String strUser = "root";
			String strPassword = "";
			conn = DriverManager.getConnection(url, strUser, strPassword);
			//out.println("<h2>本地协议纯Java 驱动程序连接MySQL数据库成功!</h2>");
            stm=conn.createStatement();
			String employeeid = request.getParameter("employeeid");
			//System.out.println(employeeid);
			String username = request.getParameter("username");
			//	System.out.println(username);
			String sex = request.getParameter("sex");
				//System.out.println(sex);
			String branch = request.getParameter("branch");
				//System.out.println(branch);
			String birthday = request.getParameter("birthday");
				//System.out.println(birthday);
			String nativeplace = request.getParameter("nativeplace");
				//System.out.println(nativeplace);
			String marriage = request.getParameter("marriage");
				//System.out.println(marriage);
			String identityid = request.getParameter("identityid");
				//System.out.println(identityid);
			String politics = request.getParameter("politics");
				//System.out.println(politics);
			String folk = request.getParameter("folk");
				//System.out.println(folk);
			String education = request.getParameter("education");
				//System.out.println(education);
			String department = request.getParameter("department");
				//System.out.println(department);
			String graduatedate = request.getParameter("graduatedate");
				//System.out.println(graduatedate);
			String university = request.getParameter("university");
				//System.out.println(university);
			String position = request.getParameter("position");
				//System.out.println(position);
			String incumbency = request.getParameter("incumbency");
				//System.out.println(incumbency);
			String incumbencytype = request.getParameter("incumbencytype");
				//System.out.println(incumbencytype);
			String resume = request.getParameter("resume");
	//System.out.println(resume);

		//String sql = "update employee set UserName='"+ username+"'";
					
					String sql = "update employee set UserName='" + username
					+ "',Sex='" + sex + "',Branch='" + branch + "'";
					
			sql += ",Birthday='" + birthday + "',NativePlace='"
					+ nativeplace + "',Marriage='" + marriage + "'";
			sql += ",IdentityID='" + identityid + "',Politics='" + politics
					+ "',Folk='" + folk + "'";
			sql += ",Education='" + education + "',Department='"
					+ department + "',GraduateDate='" + graduatedate + "'";
			sql += ",University='" + university + "',Position='" + position
					+ "',Incumbency='" + incumbency + "'";
			sql += ",IncumbencyType='" + incumbencytype + "',Resume='"
					+ resume + "'where EmployeeID='" + employeeid + "'";
				
				//sql += "where EmployeeID='"+ employeeid+"'";

			//ResultSet rs=stm.executeQuery(sql);
			int n=stm.executeUpdate(sql);
			if (n==1) {
				out.print("<script Language='javascript'>window.alert('员工修改成功，返回员工档案信息页面！')</script>");
				out.print("<script Language='javascript'>window.location='index.jsp'</script>");
			} else {
				out.print("<script Language='javascript'>window.alert('员工修改失败，返回员工档案信息页面！')</script>");
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
