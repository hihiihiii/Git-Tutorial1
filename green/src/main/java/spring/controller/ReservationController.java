package spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import spring.vo.Green_member;

import spring.service.FindpassService;

import spring.dao.ReservDao;
import spring.service.ReservationRegisterService;
//import spring.validator.ReservationRequestValidator;
import spring.vo.Reservation;
import spring.vo.ReservationRequest;


@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	private ReservDao dao;
	
	public void setReservDao(ReservDao dao) { 
		this.dao=dao;
	}
	
	private ReservationRegisterService reservationRegisterService;
	
	public void setReservationRegisterService(ReservationRegisterService reservationRegisterService) {
		this.reservationRegisterService = reservationRegisterService;
	}
	private FindpassService findpassService;

	public void setFindpassService(FindpassService findpassService) {
		this.findpassService = findpassService;
	}
	
	@RequestMapping("/step1")
	public String ReservStep1(@ModelAttribute("email") String email, Model model) {
		System.out.println("step1"+email);
		model.addAttribute("email",email);
		model.addAttribute("reservForm",new ReservationRequest());
		return "/reservation/step1";
	}
	
	@RequestMapping(value = "/step2", method = RequestMethod.POST)
	public String ReservStep2(@ModelAttribute("reservForm") ReservationRequest req, @ModelAttribute("email") String email, Errors errors,
			Model model) {
		System.out.println("step2"+email);
		model.addAttribute("email",email);
		return "/reservation/step3";
	}
	
	@RequestMapping(value = "/step3", method = RequestMethod.POST)
	public String ReservStep3(@ModelAttribute("reservForm") ReservationRequest req, @ModelAttribute("email") String email, Errors errors,
			RedirectAttributes redirectattr,Green_member green_member) {
		System.out.println("step3"+email);
//		new ReservationRequestValidator().validate(req, errors);
//		// errors 객체는 getFeildValue() 메소드가 존재해서 커맨드객체의 특정 프로터티의 값을 가져올 수 있다.
//			
		if(errors.hasErrors()) {
////			 에러가 발생하면 (rejectValue 메소드가 실행되면) 단 한번이라도 에러가 발생시 
////			 hasErrors 메소드는 true를 반환
			System.out.println("에러 발생");
			return "/reservation/step1";
		}
		Reservation resultDto =  reservationRegisterService.regist(req);
		 System.out.println("값은 ? : "+resultDto.getReserv_email());
//		 if(resultDto == null) {
//			 System.out.println("널입니다.");
//		 }
			redirectattr.addFlashAttribute("resultDto", resultDto);
			return "redirect:/sendpass2";
		 
}
	
	@RequestMapping("/info/{user_id}")
	public String ReservInfo(@PathVariable("user_id") String memId, Model model) { 
		System.out.println("테스트 값을 받아오는지"+memId);
		//List<Reservation> reservation = dao.selectByReserv_id(r);
			List<Reservation> r = dao.selectByReserv_id1(memId);
			model.addAttribute("reserv",r);
			if(r==null) {
				return "/main";
			}
		
		return "/reservation/info";
		}
	
	@RequestMapping("/infoAll")
	public String ReservInfo(Model model) { 
			List<Reservation> r = dao.selectAll();
			model.addAttribute("reserv",r);
		
		return "/reservation/info";
		}
	
	@RequestMapping("/infoGuest")
	public String ReservinfoGuest() {
		return "/reservation/infoGuest";
	}
	
	@RequestMapping("/infoGuestChk")
	public String ReservInfoGuestChk(@RequestParam(value="number", defaultValue = "false") Long number, Model model) { 
		System.out.println("테스트 값을 받아오는지"+number);
		//List<Reservation> reservation = dao.selectByReserv_id(r);
			List<Reservation> g = dao.selectByReserv_indexGuest(number);
			model.addAttribute("guest",g);
			if(g==null) {
				return "/reservation/infoGuestFail";
			}
		
		return "/reservation/infoGuestSuccess";
		}
	
	@RequestMapping("/delete")
	public String ReservDelete(@RequestParam(value="index", defaultValue = "false") Long index,Model model) {
		List<Reservation> r = dao.selectAll();
		model.addAttribute("reserv",r);
		dao.delete(index);
		return "/reservation/info";
	}

	@RequestMapping("/step0")
	public String step0(@RequestParam(value="email", defaultValue = "false") String email, Model model) {
		System.out.println(email);
		model.addAttribute("email",email);
		model.addAttribute("reservForm",new ReservationRequest());
		return "/reservation/step1";
	}
	@RequestMapping("/step0Guest")
	public String step0Guest() {
		return "/reservation/step0";
	}
	
	@RequestMapping("/step4")
	public String step4() {
		return "/reservation/step4";
	}
	
}
