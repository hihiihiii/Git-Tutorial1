package spring.service;

import spring.dao.MemberDao;
import spring.exception.IdPasswordNotMatchingException;
import spring.vo.AuthInfo;
import spring.vo.Green_member;

public class AuthService {
	
	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	public AuthInfo authenticate(String user_id, String user_pwd) {
		Green_member green_member = memberDao.selectById(user_id);
		
		if(green_member==null) {
			throw new IdPasswordNotMatchingException();
		}
//		if(!member.getPassword().equals(password)) {
		if(!green_member.matchPassword(user_pwd)) {
			throw new IdPasswordNotMatchingException();
		}
		System.out.println("어드민 : "+green_member.getUser_number()+green_member.getAdmin_code());
		return new AuthInfo( green_member.getUser_number(),green_member.getUser_id(),
				green_member.getUser_name(),green_member.getAdmin_code(),green_member.getUser_email()
				,green_member.getUser_tel());
		
		
	}
}
