package com.vitan;
import java.sql.*;

public class Query {
	String databaseName = ""; // 数据库名
	String tableName = ""; // 表名
	String user = ""; // 用户
	String password = ""; // 密码
	StringBuffer queryResult; // 查询结果

	public Query() {
		queryResult = new StringBuffer();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	public String getDatabaseName() {
		return databaseName;
	}

	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName.trim();
	}

	public String getTableName() {
		return tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName.trim();
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user.trim();
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password.trim();
	}

	public StringBuffer getQueryResult() {
		Connection con;
		Statement sql;
		ResultSet rs;
		try {
			queryResult.append("<table border=1>");
			String uri = "jdbc:mysql://127.0.0.1/" + databaseName;
			con = DriverManager.getConnection(uri, user, password);
			DatabaseMetaData metadata = con.getMetaData();
			ResultSet rs1 = metadata.getColumns(null, null, tableName, null);
			int number1 = 0;
			queryResult.append("<tr>");
			while (rs1.next()) {
				number1++;
				String clumnName = rs1.getString(4);
				queryResult.append("<td>" + clumnName + "</td>");
			}
			queryResult.append("</tr>");
			sql = con.createStatement();
			rs = sql.executeQuery("SELECT * FROM " + tableName);
			while (rs.next()) {
				queryResult.append("<tr>");
				for (int k = 1; k <= number1; k++)
					queryResult.append("<td>" + rs.getString(k) + "</td>");
				queryResult.append("</tr>");
			}
			queryResult.append("</table>");
			rs1.close();
			rs.close();
			sql.close();
			con.close();
		} catch (SQLException e) {
			queryResult.append("请输入正确的用户名和密码");
		}
		return queryResult;
	}

}
