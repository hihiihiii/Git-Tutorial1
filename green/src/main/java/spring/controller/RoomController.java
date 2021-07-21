package spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/room")
public class RoomController {
	
	@RequestMapping("kind")
	public String kind() {
		return "/room/kind";
	}
	
	@RequestMapping("standard")
	public String standard() {
		return "/room/standard";
	}
	
	@RequestMapping("deluxe")
	public String deluxe() {
		return "/room/deluxe";
	}
	
	@RequestMapping("premium")
	public String premium() {
		return "/room/premium";
	}
	
	@RequestMapping("suite")
	public String suite() {
		return "/room/suite";
	}
	
	@RequestMapping("premium_Suite")
	public String premium_Suite() {
		return "/room/premium_Suite";
	}
}
