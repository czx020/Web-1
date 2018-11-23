/**
 * 
 */
package mybean;

/**
 * @author Administrator
 *
 */
public class LoginBean {

	/**
	 * 
	 */
	public LoginBean() {
		
	}
	private String username="";
	private String pw="";
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}	
	public int check1() {
		if(username.equals("kd")&&pw.equals("111111"))
		{
			return 1;
			
		}else{
			
			return 0;
		}
		
		
	}
	

}
