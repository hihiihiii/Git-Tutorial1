package spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import spring.service.FindpassService;

import spring.validator.FindPassValidator;
import spring.vo.Green_member;

@Controller
@RequestMapping("/findPw")
public class UserController {

	private FindpassService findpassService;

	public void setFindpassService(FindpassService findpassService) {
		this.findpassService = findpassService;
	}

	@RequestMapping(value = "/find_passView", method = RequestMethod.GET)
	public String find_pass2() {
		return "findPw/find_passView";
	}
/////////////////////////////////////////////////////////////////////
	
	@RequestMapping(value = "/find_emailView", method = RequestMethod.GET)
	public String find_emailView() {
		return "findPw/find_emailView";
	}
	
	@RequestMapping(value = "/find_emailView", method = RequestMethod.POST)
	public String find_email(Green_member green_member,Errors errors,String user_email,HttpSession session) {
		new FindPassValidator().validate(green_member, errors);
		if (errors.hasErrors()) {
			return "findPw/find_emailView";
		}
		try {
			int num = findpassService.find_email(user_email);
			session.setAttribute("num", num);
			return "/findPw/find_emailSuccess";
			
		}catch(Exception e) {
			errors.reject("EmailNotExist");
			return "/findPw/find_emailView";
		}
		
	}
	
/////////////////////////////////////////////////////////////////////
	

	@RequestMapping(value = "/find_passView", method = RequestMethod.POST)
	public String find_pass(Green_member green_member, RedirectAttributes redirectattr, Errors errors) {
		new FindPassValidator().validate(green_member, errors);
		if (errors.hasErrors())
			return "findPw/find_passView";
		try {
			Green_member resultDto = findpassService.execute(green_member.getUser_email());

			redirectattr.addFlashAttribute("resultDto", resultDto);
			return "redirect:/sendpass";
		} catch (Exception e)

		{
			errors.reject("EmailNotExist");
			return "/findPw/find_passView";
		}
	}
}
