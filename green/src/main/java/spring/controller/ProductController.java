package spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.dao.ProductDao;
import spring.exception.AlreadyExistingProductException;
import spring.exception.ProductNotExistingException;
import spring.service.ProductDeleteService;
import spring.service.ProductRegisterService;
import spring.validator.ProductRequestValidator;
import spring.vo.Product;
import spring.vo.ProductRequest;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	private ProductRegisterService productRegisterService;
	private ProductDao productDao;
	private ProductDeleteService productDeleteService;
	
	public void setProductRegisterService(ProductRegisterService productRegisterService) {
		this.productRegisterService = productRegisterService;
	}
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	

	@RequestMapping("step1")
	public String handlerStep1(@ModelAttribute("productForm") ProductRequest proReq, Errors errors, Model model) {
		
		if(errors.hasErrors()) {
			System.out.println("에러");
			return "product/step1";
		
		}
		
		if(proReq != null) {
			List<Product> productList = productDao.selectAll();
			model.addAttribute("productList",productList);
		}
		
		return "/product/step1";
	}
	
	

	
	@RequestMapping(value = "/step2")
	public String handlerStep2(Model model) {
		model.addAttribute("productForm", new ProductRequest());
		return "/product/step2";
	}
	
	
	@RequestMapping(value = "/step3")
	public String handlerStep3(@ModelAttribute("productForm") ProductRequest proReq, Errors errors) {
		new ProductRequestValidator().validate(proReq, errors);
		
		try {
			productRegisterService.regist(proReq);
			return "redirect:step1";
		}catch(AlreadyExistingProductException e) {
			errors.rejectValue("product_number", "duplicate");
			return "/product/step2";
		}
	}
	

	
}
