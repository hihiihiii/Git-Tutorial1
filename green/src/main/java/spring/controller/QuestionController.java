package spring.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/question")
public class QuestionController {



@RequestMapping("/question")
public String question() {
	return "/question/index";
}

@RequestMapping("/FAQ")
public String faq() {
	return "/question/FAQ";
}
}
