package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/photography")
public class PhotoController {
	
	@RequestMapping("/photo")
	public String Photo() {
		return "/photography/photo";
	}
}
