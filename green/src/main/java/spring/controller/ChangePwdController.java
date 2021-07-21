package spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.exception.AlreadyExistingMemberEmailException;
import spring.exception.IdPasswordNotMatchingException;
import spring.service.ChangePasswordService;
import spring.validator.ChangePwdCommandValidator;
import spring.vo.AuthInfo;
import spring.vo.ChangePwdCommand;

@Controller
@RequestMapping("edit/changePassword")
public class ChangePwdController {
	private ChangePasswordService changePasswordService;
	
	public ChangePwdController(ChangePasswordService changePasswordService) {
		this.changePasswordService=changePasswordService;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String form(ChangePwdCommand changePwdCommand, HttpSession session, Model model) {
		
		//authInfo 값을 가져올 수 가 있다.
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		
		//확인 쿼리문
		System.out.println("4234 : "+authInfo.getAdmin_code());
		
		//model 에 저장을 하기 위한.
		model.addAttribute("authInfo",authInfo);
	
		return "edit/changeInfomationForm";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String submit(ChangePwdCommand changePwdCommand,
			Errors errors,HttpSession session) {
		new ChangePwdCommandValidator().validate(changePwdCommand, errors);
		
		//하나의 오류라도 발생하면 현재 페이지로 이동하고 
		if(errors.hasErrors()) {
			return "edit/changeInfomationForm";
		}
		
		// authInfo
		// 기존에있는 정보를 가져온다.
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		
		try {
			// 체인지 페스워드 서비스 
			
			changePasswordService.changeInfomation(
					//현재 저장되어있는 아이디와 어드민 코드를.
					authInfo.getUser_id(),
					authInfo.getAdmin_code(), //어드민코드
					//입력한 커맨드 값을 가져옴. 5개는 입력값.
					changePwdCommand.getUser_name(), //유저 네임 
					changePwdCommand.getUser_email(), //유저 이메일 
					changePwdCommand.getUser_tel(), //유저 연락처 .
					changePwdCommand.getCurrentPassword(), //현재 비밀번호
					changePwdCommand.getNewPassword()); // 새로운 비밀번호 
			
			
			return "edit/changedInfomation";
		
		}catch(IdPasswordNotMatchingException err) {// 입력한 기존 비밀번호가 저장된 비밀번호와 다른 경우     
			errors.rejectValue("currentPassword", "notMatching");
			return "edit/changeInfomationForm";
		}catch(AlreadyExistingMemberEmailException ee) {
			errors.rejectValue("user_email", "dupEmail");
			return "edit/changedInfomation";
		}
	
	
	
	
}
}
