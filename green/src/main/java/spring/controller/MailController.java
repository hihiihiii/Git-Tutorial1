package spring.controller;

import java.util.Map;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletResponse;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.vo.Green_member;
import spring.vo.Reservation;

@Controller
public class MailController {

private static final String String = null;
	//	 	@Autowired
//	    JavaMailSender mailSender = new JavaMailSender(); //root-context에서 생성한 google mailsender 빈
	JavaMailSenderImpl mailSender;

	public void setMailSender(JavaMailSenderImpl mailSender) {// 스프링으로부터 주입
		this.mailSender = mailSender;
	}

	// mailSending 코드
	@RequestMapping(value = "/sendpass")
	public String mailSending(Model model, HttpServletResponse response) {

		Map<String, Object> map = model.asMap();
		Green_member Green_member = (Green_member) map.get("resultDto");

		System.out.println(Green_member.getUser_email());
		System.out.println(Green_member.getUser_id());

		String setfrom = "GreenHotel.gr";
		String tomail = Green_member.getUser_email(); // 받는 사람 이메일
		String title = Green_member.getUser_name() + "님의 개인정보입니다."; // 제목
		String content = "["+Green_member.getUser_name() + "] 님의 아이디는 [" + Green_member.getUser_id() + "]\n비밀번호는 ["
				+ Green_member.getUser_pwd() + "] 입니다. "; // 내용
		System.out.println(Green_member.getUser_id() + " 비밀번호는 : " + Green_member.getUser_pwd());
		try {

			MimeMessage message = mailSender.createMimeMessage();

			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8"); // 두번째 인자 true여야 파일첨부 가능.

			message.setFrom(new InternetAddress(setfrom)); // 보내는사람 생략하거나 하면 정상작동을 안함

			messageHelper.setTo(tomail); // 받는사람 이메일

			message.setSubject(title); // 메일제목은 생략이 가능하다

			message.setContent(content, "text/plain; charset=UTF-8"); // 메일 내용

			mailSender.send(message);

			response.setContentType("text/plain; charset=UTF-8");
//	          PrintWriter out = response.getWriter();
//	          out.println("<script>alert('성공적으로 메일을 발송했습니다.'); history.go(-1); </script>");
//	          out.flush();
			return "mail/EmailSuccess";

		} catch (Exception e) {
			System.out.println(e);
		}

		return "mail/EmailSuccess";
	}

	
	// ------------------------------------------------------------------------ 예약완료 되면 
	@RequestMapping(value = "/sendpass2")
	public String mailSending2(Model model, HttpServletResponse response) {
		Map<String, Object> map = model.asMap();
		
		Reservation reservation = (Reservation) map.get("resultDto");
//		Green_member green_member = (Green_member) map2.get("resultDto2");
		
	
		String setfrom = "GreenHotel";
		
		String tomail =reservation.getReserv_email(); // 받는 사람 이메일
		String title = "그린 호텔 예약 정보입니다.";
		String content = reservation.getReserv_id() + "님"
				+ "\n- 접수번호 : " + reservation.getReserv_index()
				+ "\n- 투숙날짜 : "+ reservation.getReserv_to() + " ~ " + reservation.getReserv_from()
				+ "\n- 객실 : [" + reservation.getReserv_type() + "] [" + reservation.getReserv_bed()+" 베드] "
						+ "\n사이즈는 " + reservation.getReserv_size() +"입니다." 
				+ "\n- 추가사항이 있으시면 해당 메일로 문의를 주시거나 1544-7788로 연락주시기 바랍니다. ";
		try {

			MimeMessage message = mailSender.createMimeMessage();

			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8"); // 두번째 인자 true여야 파일첨부 가능.

			message.setFrom(new InternetAddress(setfrom)); // 보내는사람 생략하거나 하면 정상작동을 안함

			messageHelper.setTo(tomail); // 받는사람 이메일

			message.setSubject(title); // 메일제목은 생략이 가능하다

			message.setContent(content, "text/plain; charset=UTF-8"); // 메일 내용

			mailSender.send(message);

			response.setContentType("text/plain; charset=UTF-8");
//	          PrintWriter out = response.getWriter();
//	          out.println("<script>alert('성공적으로 메일을 발송했습니다.'); history.go(-1); </script>");
//	          out.flush();
			return "/main";

		} catch (Exception e) {
			System.out.println(e);
		}

		return "/main";
	}

}
