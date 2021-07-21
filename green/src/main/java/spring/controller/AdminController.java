package spring.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.dao.MemberDao;
import spring.vo.AuthInfo;
import spring.vo.Green_member;


@Controller
@RequestMapping("/member")
public class AdminController {
	
	private MemberDao dao;
	
	public void setMemberDao(MemberDao dao) { 
		this.dao=dao;
	}
	
	@RequestMapping("/memberList")
	public String list(Model model) { 
	
			List<Green_member> green_member = dao.selectByRegdate();
			
			model.addAttribute("Green_member", green_member);
		
	
		return "member/memberList";
	}
	
	//삭제.
	@RequestMapping("/delete")
	public String ReservDelete(@RequestParam(value="user_id", defaultValue = "false") String user_id, Model model) {
		System.out.println(user_id);
		System.out.println("테스트");
		dao.delete2(user_id);
		List<Green_member> green_member = dao.selectByRegdate();
		
		model.addAttribute("Green_member", green_member);
		return "/member/memberList";
		
	}
	//권한 부여
		@RequestMapping("/update")
		public String UpdateAdmin(@RequestParam(value="user_id", defaultValue = "false") String user_id, Model model,HttpSession session) {
			
			dao.updateAdmin(user_id);
			//전체검색
			List<Green_member> green_member = dao.selectByRegdate();
			
//			AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
//			model.addAttribute("authInfo",authInfo);
			
	
			model.addAttribute("Green_member", green_member);
			
			
			return "/member/memberList";
		}
	
	
	//권한 해제
	@RequestMapping("/update2")
	public String UpdateAdmin2(@RequestParam(value="user_id", defaultValue = "false") String user_id, Model model) {
		dao.updateAdmin2(user_id);
		//전체검색
		List<Green_member> green_member = dao.selectByRegdate();
		
		model.addAttribute("Green_member", green_member);
		return "/member/memberList";
	}
	
}

