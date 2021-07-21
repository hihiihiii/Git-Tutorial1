package spring.service;

import java.util.Date;
import java.util.List;

import spring.dao.MemberDao;
import spring.exception.AlreadyExistingMemberEmailException;
import spring.exception.AlreadyExistingMemberException;
import spring.vo.Admin;
import spring.vo.Green_member;
import spring.vo.RegisterRequest;

public class MemberRegisterService {
	//컨트롤러에서 와서.
	private MemberDao memberDao; // = new MemberDao();

	//MemberRegisterService에다가 MemberDao값을 넣는다. 주입?
	public MemberRegisterService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	 
	public void regist(RegisterRequest req,Admin ad,String user_email) { // 레지스트 리퀘스트. 
		//멤버안에 memberDao안에 selectById 라는 메소드에서 req.getUser_id();를가져온다.
	
		Green_member member = memberDao.selectById(req.getUser_id());
		int num = memberDao.count(user_email);
		System.out.println("값은 : " +num);
		
		if(req.getAdmin_code().isEmpty() || !req.getAdmin_code().equals(ad.getCode())){
			req.setAdmin_code(null);
		}else {
			req.setAdmin_code(ad.getCode());
		}
		
		if(num > 0) {
			throw new AlreadyExistingMemberEmailException("dup user_email");
		}
		
		if (member != null) {
			//														겟 유저 아이디를 가져온다.
			throw new AlreadyExistingMemberException("dup user_id " + req.getUser_id());
		}
		
	
		
		//req에다가 저장할 RegisterRequest req 에다가 저장한..?
		Green_member newMember = new Green_member(
				req.getAdmin_code(), req.getUser_id(), req.getUser_pwd(), req.getUser_name(), req.getUser_gender(),
				req.getUser_tel(), req.getUser_email(), new Date()
				);
		
		memberDao.insert(newMember); //다시 DAO로 던져준다.
	}
	
}
