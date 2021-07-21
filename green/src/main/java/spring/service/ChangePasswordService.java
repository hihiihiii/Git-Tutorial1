package spring.service;

import spring.dao.MemberDao;
import spring.exception.AlreadyExistingMemberEmailException;
import spring.exception.MemberNotFoundException;
import spring.vo.Green_member;

public class ChangePasswordService {
	
	private MemberDao memberDao;
	

	public ChangePasswordService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	
	// 체인지 인포메이션 아이디를 가져와서 그 멤버가 예외면 예외처리하고. infomations에 저장을한다.
	
	public void changeInfomation(String user_id, String admin_code,  String user_name,
			String user_email, String user_tel,  String oldPwd, String newPwd) {
		//멤버 아이디를 가져왔다. user_id
		Green_member member = memberDao.selectById(user_id);
		int num = memberDao.count(user_email);
		System.out.println("값은 : " +num);
		
		//member 아이디가 널이면 예외처리를해
		if (member == null)
			throw new MemberNotFoundException();
		//memberChagnePassword(기존 , 새롭게 입력한 new password)
		
		if(num > 1) {
			throw new AlreadyExistingMemberEmailException("dup user_email");
		}
		
		member.changeInfomations(admin_code,oldPwd,newPwd,user_name,user_tel, user_email);
																									
		memberDao.update(member);
		
		
	}
}
