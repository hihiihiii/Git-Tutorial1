package spring.vo;

public class AuthInfo { //로그인후 저장객체를 넘겨줄때 사용할 객체.
	private long user_number;
	private String user_id;
	private String user_name;
	private String admin_code;
	private String user_tel;
	private String user_email;
	
	public AuthInfo(long user_number,String user_id, String user_name, 
			String admin_code, String user_email, String user_tel) {
		this.user_number =user_number;
		this.user_id = user_id;
		this.user_name = user_name;
		this.admin_code = admin_code;
		this.user_email =user_email;
		this.user_tel =user_tel;
	}
	
	public long getUser_number() {
		return user_number;
	}

	public void setUser_number(long user_number) {
		this.user_number = user_number;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_tel() {
		return user_tel;
	}

	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}

	public String getAdmin_code() {
		return admin_code;
	}

	public void setAdmin_code(String admin_code) {
		this.admin_code = admin_code;
	}


	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	
	
	
	
	
	
	
	
	
	

	
	
	
	
}
