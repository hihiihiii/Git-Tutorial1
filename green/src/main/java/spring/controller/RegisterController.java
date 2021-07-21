
package spring.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.exception.AlreadyExistingMemberEmailException;
import spring.exception.AlreadyExistingMemberException;
import spring.service.MemberRegisterService;
import spring.validator.RegisterRequestValidator;
import spring.vo.Admin;
import spring.vo.RegisterRequest;

@Controller
@RequestMapping("/register")
public class RegisterController {

	private MemberRegisterService memberRegisterService;

	public void setMemberRegisterService(MemberRegisterService memberRegisterService) {
		this.memberRegisterService = memberRegisterService;
	}

	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("/step1")
	public String handlerStep1() {
		return "register/step1";
	}

	@RequestMapping(value = "/step2", method = RequestMethod.POST)
	public String handlerStep2(@RequestParam(value = "agree", defaultValue = "false") Boolean agree, Model model) {

		if (!agree) {
			return "register/step1";
		}
		// agree부분은 js로 설정해놨으니까 상관없음

		model.addAttribute("formData", new RegisterRequest());
		return "register/step2";
	}

	@RequestMapping(value = "/step2", method = RequestMethod.GET)
	public String handlerStep2Get() {
		return "redirect:step1";
		// return "register/step1";
	}
	
	@RequestMapping(value = "/step3", method = RequestMethod.POST) // => /register/step3
	public String handlerStep3(
			// modelAtrribtte(formData 에다가 담아둔다.)
			@ModelAttribute("formData") RegisterRequest regReq, Errors errors, Admin ad,String user_email) {
		new RegisterRequestValidator().validate(regReq, errors);
		// errors 객체는 getFieldValue()메서드가 존재해서 커맨드객체의 특정 프로퍼티의 값을 가져올수 있다.
		if (errors.hasErrors()) {
			// 에러가 발생하면 (rejectValue 메서드가 실행되면)
			// 단 한번이라도 에러 발생시 hasErrors메서드는 true를 반환
			return "register/step2";
		}

		try {
			// 회원가입에 regist 메서드를가져와서 사용한다.
			memberRegisterService.regist(regReq, ad,user_email);
			// 예외가 안나고 성공하면 regist/step3로 넘어가겠다.
			return "register/step3";
		} catch (AlreadyExistingMemberException ee) {
			// 마지막예외가 나면
			errors.rejectValue("user_id", "duplicate.Id");
			return "register/step2";

		} catch(AlreadyExistingMemberEmailException ee) {
			errors.rejectValue("user_email", "dupEmail");
			return "register/step2";
		}
	}
}
