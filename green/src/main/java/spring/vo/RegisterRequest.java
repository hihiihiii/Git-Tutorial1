package spring.vo;

import java.util.Date;

public class RegisterRequest { //command
	private String user_id;
	private String user_pwd;
	private String confirmPassword;
	private String user_name;
	private int user_gender;
	private String user_tel;
	private String user_email;
	private String admin_code;
	private Date user_birtday;
	
	public String getAdmin_code() {
		return admin_code;
	}
	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}

	public boolean isPasswordEqualToConfirmPassword() {
		return user_pwd.equals(confirmPassword);
	}
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_gender() {
		return user_gender;
	}
	public void setUser_gender(int user_gender) {
		this.user_gender = user_gender;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public Date getUser_birtday() {
		return user_birtday;
	}
	public void setUser_birtday(Date user_birtday) {
		this.user_birtday = user_birtday;
	}
	
	
	
}
