package spring.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.dao.ProductDao;
import spring.exception.ProductNotExistingException;
import spring.service.ProductDeleteService;
import spring.vo.Product;


@Controller
public class ProductDeleteController {
	private ProductDeleteService productDeleteService;
	private ProductDao productDao;
	
	public void setProductDeleteService(ProductDeleteService productDeleteService) {
		this.productDeleteService = productDeleteService;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	
	@RequestMapping(value = "/product/deleted/{product_number}")
	public String deleted(@PathVariable int product_number) {
		
		Product product = productDao.selectByProduct_number(product_number);
		System.out.println(product);
		
		if(product == null) {
			throw new ProductNotExistingException();
		}
		
		productDeleteService.delete(product_number);
		
		return"/product/deleted";
	}
}
