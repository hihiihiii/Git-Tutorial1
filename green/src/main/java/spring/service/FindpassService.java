package spring.service;

import spring.dao.MemberDao;
import spring.exception.AlreadyExistingMemberEmailException;
import spring.vo.Green_member;

public class FindpassService {
	
	private MemberDao memberDao;

	public void setMemberDao(MemberDao memberDao) {
		this.memberDao = memberDao;
	}
	
	 public Green_member execute(String user_email) throws Exception{
         
		 //이메일을 가져와야한다.
         Green_member resultDto = memberDao.selectByEmail(user_email);
         
         System.out.println("값은 : "+resultDto.getUser_email());
		  // 헷갈리지 않게 수정한다.
         if(resultDto == null) {
             throw new Exception();
         }
         //사용자가 입력한 아이디가 존재하지 않으면 예외 던짐.
         return resultDto;
     
 }
	 
	 public int find_email(String user_email) throws Exception{
		 
		 int num = memberDao.count(user_email);
		 
		 if(num > 0) {
				throw new AlreadyExistingMemberEmailException("dup user_email");
			}
		 
		return num;
		 
		 
	 }



}
