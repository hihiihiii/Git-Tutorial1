package spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import spring.dao.ProductDao;
import spring.exception.ProductNotExistingException;
import spring.service.EshopRegisterService;
import spring.vo.Product;
import spring.vo.CartRequest;
import spring.vo.Eshop;
import spring.vo.EshopRequest;

@Controller
@RequestMapping("/product")
public class ProductDetailController {
	private ProductDao productDao;

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	private	EshopRegisterService eshopRegisterService;
	
	public void setEshopRegisterService(EshopRegisterService eshopRegisterService) {
		this.eshopRegisterService = eshopRegisterService;
	}
	
	
	@RequestMapping("detail/{product_number}")
	public String detail(@ModelAttribute("cart")CartRequest cartReq, @PathVariable("product_number") int product_number, Model model) {
		
		Product product = productDao.selectByProduct_number(product_number);
		
		if(product == null) {
			throw new ProductNotExistingException();
		}
		
		model.addAttribute("pro",product);
		model.addAttribute("eshop",new EshopRequest());
		
		return "/product/detail";
	}
	
	@RequestMapping(value = "/step4")
	public String handlerStep4(@ModelAttribute("eshop") EshopRequest esReq, Errors errors) {
		System.out.println("테스트 아이디"+esReq.getEshop_id());
		eshopRegisterService.regist(esReq);
		return "/reservation/step4";
	}
	
	@RequestMapping("/info/{user_id}")
	public String info(@PathVariable("user_id") String id, Model model) {
		System.out.println("테스트 값을 받아오는지"+id);
		//List<Reservation> reservation = dao.selectByReserv_id(r);
			List<Eshop> e = productDao.selectByEshop_id(id);
			model.addAttribute("eshop",e);
			if(e==null) {
				return "/main";
			}
		
			return "/product/info";
		}
	
	@RequestMapping("/deleteEshop")
	public String eshopDelete(@RequestParam(value="index", defaultValue = "false") Long index,Model model) {
		System.out.println("삭제 테스트"+index);
		List<Eshop> e = productDao.selectEshopAll();
		model.addAttribute("eshop",e);
		productDao.deleteEshop(index);
		return "/reservation/delete";
	}
		
		
	}

