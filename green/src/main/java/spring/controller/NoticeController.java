package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/notice")
public class NoticeController {



@RequestMapping("/notice")
public String notice() {
	System.out.println("테스트9");
	
	return "/notice/index";
}
}
