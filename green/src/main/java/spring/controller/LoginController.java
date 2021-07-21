package spring.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.exception.IdPasswordNotMatchingException;
import spring.service.AuthService;
import spring.validator.LoginCommandValidator;
import spring.vo.AuthInfo;
import spring.vo.LoginCommand;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	private AuthService authService;
	
	public void setAuthService(AuthService authService) {//스프링으로부터 주입
		this.authService = authService;
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String form(LoginCommand loginCommand,
			@CookieValue(value="rememberId", required=false)Cookie rememberId) {
		// if 만약 . 
		if(rememberId != null) {
			loginCommand.setUser_id(rememberId.getValue());
			loginCommand.setRememberId(true);
		}
				
		return "login/loginForm";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String submit(LoginCommand loginCommand, Errors errors, 
			HttpSession session,HttpServletResponse response) {
		//1. 아이디, 비밀번호가 입력이 되기는 했는지 검증
		new LoginCommandValidator().validate(loginCommand, errors);
		
		if(errors.hasErrors()) {// 로그인 실패
			return "login/loginForm";
		}
		//2. 입력받은 이메일이 DB에 저장이 되었는가? /DB에서 가져온 비밀번호와 일치하는가?
		
		try {
			AuthInfo authInfo = authService.authenticate(
					loginCommand.getUser_id(), 
					loginCommand.getUser_pwd());
			// 로그인 성공시 인증 정보를 저장  => 세션 저장
			session.setAttribute("authInfo", authInfo);
			
			// 이메일 저장용 쿠키
			Cookie rememberCookie = 
					new Cookie("rememberId",loginCommand.getUser_id());
			
			rememberCookie.setPath("/");
			if(loginCommand.isRememberId()) {
				rememberCookie.setMaxAge(60*60*24*365);
			}else {
				rememberCookie.setMaxAge(0);
			}
			// 쿠키 클라이언트에 저장
			response.addCookie(rememberCookie);
			
			return "login/loginSuccess";
		}catch(IdPasswordNotMatchingException e) {
			// 이메일이 없거나 또는 비밀번호가 틀렸거나
			errors.reject("idPasswordNotMatching");
			return "login/loginForm";
		}
		
	}
}
