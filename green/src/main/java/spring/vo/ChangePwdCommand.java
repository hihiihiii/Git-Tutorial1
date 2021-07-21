package spring.vo;

public class ChangePwdCommand {
	
	
	private String user_name;
	private String user_email;
	private String user_tel;
	private String admin_code;
	private String currentPassword;
	private String newPassword;
	
	
	public String getAdmin_code() {
		return admin_code;
	}
	public void setAmdin_code(String admin_code) {
		this.admin_code = admin_code;
	}
	public String getCurrentPassword() {
		return currentPassword;
	}
	public void setCurrentPassword(String currentPassword) {
		this.currentPassword = currentPassword;
	}
	public String getNewPassword() {
		return newPassword;
	}
	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
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


}
