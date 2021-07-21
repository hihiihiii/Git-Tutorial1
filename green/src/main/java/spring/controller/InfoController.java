package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/information")
public class InfoController {
	
	@RequestMapping("/info")
	public String Photo() {
		return "/information/info";
	}
}
