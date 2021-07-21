package spring.vo;

import java.util.Date;

import spring.exception.IdPasswordNotMatchingException;

public class Green_member {
	
	private long user_number;
	private String admin_code;
	private String user_id;
	private String user_pwd;
	private String user_name;
	private int user_gender;
	private String user_tel;
	private String user_email;
	private Date user_birthday;
	
	
	public Green_member(String admin_code, String user_id, String user_pwd, String user_name, int user_gender, String user_tel,
			String user_email, Date user_birthday) {
		this.admin_code = admin_code;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.user_gender = user_gender;
		this.user_tel = user_tel;
		this.user_email = user_email;
		this.user_birthday = user_birthday;
		
	}
	
	public Green_member() {
		
	}
	
	public void changeInfomations(String newadmin_code,  String oldPassword, String newPassword, String new_name, String new_tel,String new_email) {
		this.admin_code = newadmin_code;
		this.user_name = new_name;
		if (!user_pwd.equals(oldPassword)) {
			throw new IdPasswordNotMatchingException();
		}else {
			this.user_pwd = newPassword;
		}
		this.user_tel = new_tel;
		this.user_email = new_email;
		// 현재 세션에 user_pwd랑 커맨드로 입력한 oldPassword랑  같지 않다면.
	}


	
	public String getAdmin_code() {
		return admin_code;
	}

	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}

	public long getUser_number() {
		return user_number;
	}
	public void setUser_number(long user_number) {
		this.user_number = user_number;
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
	public Date getUser_birthday() {
		return user_birthday;
	}
	public void setUser_birthday(Date user_birthday) {
		this.user_birthday = user_birthday;
	}


	
	
	//비밀번호 바꿀때  지금 정보 변경 스타트
	/*
	 * public void changePassword(String oldPassword, String newPassword) { 
	 * if
	 * 	(!user_pwd.equals(oldPassword)) throw new IdPasswordNotMatchingException();
	 * this.user_pwd = newPassword; 
	 * }
	 */
	
	
	
	public boolean matchPassword(String inputPassword) {
		return this.user_pwd.equals(inputPassword);
	}
}
