package mybean;
import java.sql.*;

public class LoginBean {
	private String username = null;
	private String password = null;
	Connection conn = null;
	Statement stm = null;
	ResultSet rs = null;

	public LoginBean() {
	}

	public void setUsername(String value) {
		username = value;
	}

	public void setPassword(String value) {
		password = value;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}

	public int check() {

		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/hrms1";
			String strUser = "root";
			String strPassword = "";
			conn = DriverManager.getConnection(url, strUser, strPassword);
			// out.println("<h2>本地协议纯Java 驱动程序连接MySQL数据库成功!</h2>");
			stm = conn.createStatement();
			String sql = "select * from users where UserName='" + username
					+ "' and Password='" + password + "'";
			rs = stm.executeQuery(sql);
			if (rs.next()) {
				return 1;
			} else {
				return 0;
			}
		} catch (Exception e) {
			return 0;
		}
	}

	public void connclose() {
		try {
			if (rs != null)
				rs.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		try {
			if (stm != null)
				stm.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if (conn != null)
				conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
