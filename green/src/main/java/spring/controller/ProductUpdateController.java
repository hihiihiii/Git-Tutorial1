package spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.exception.ProductNotExistingException;
import spring.service.ProductUpdateService;
import spring.validator.UpdateCommandValidator;

import spring.vo.Product;
import spring.vo.UpdateCommand;

@Controller
@RequestMapping("/product")
public class ProductUpdateController {
	private ProductUpdateService productUpdateService;
	private Product product;
	
	
	public ProductUpdateController(ProductUpdateService productUpdateService) {
		this.productUpdateService = productUpdateService;
	}
	
	@RequestMapping("/update/{product_number}")
	public String form(@PathVariable("product_number") int product_number, Model model) {
		model.addAttribute("productUpdate",new UpdateCommand());
		
		return "/product/update";
		
	}
	
	
	@RequestMapping(value = "/updateComp/{product_number}")
	public String updated(@PathVariable("product_number") int product_number, @ModelAttribute("productUpdate") UpdateCommand updateCommand, Errors errors, HttpSession session) {
		new UpdateCommandValidator().validate(updateCommand, errors);
		System.out.println("테스트");
		
			productUpdateService.update(product_number,
					updateCommand.getNewproduct_name(),
					updateCommand.getNewproduct_price(),
					updateCommand.getNewproduct_url(),
					updateCommand.getNewproduct_description());
			
			return "/product/updateComp";
			
		
	}
	
}
