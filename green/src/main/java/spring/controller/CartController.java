package spring.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import spring.dao.CartDao;
import spring.dao.ProductDao;
import spring.service.CartService;
import spring.vo.Cart;
import spring.vo.CartRequest;
import spring.vo.Product;


@Controller
public class CartController {
	private CartService cartService;
	private CartDao cartDao;
	private ProductDao productDao;
	public void setCartService(CartService cartService) {
		this.cartService = cartService;
	}
	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}
	
	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	@RequestMapping(value = "/cart/cartList/{product_number}/{user_number}")
	public String cart (@ModelAttribute("cart")CartRequest cartReq ,@PathVariable("product_number") int product_number, 
			@PathVariable("user_number") long user_number, Model model) {
		List<Cart> cartList = cartDao.cartALLList(user_number);
		List<Product> productList = productDao.selectAllbyproductNum(user_number);

		cartService.regist(user_number,product_number,cartReq);
		
		model.addAttribute("productList",productList);
		model.addAttribute("cartList",cartList);
		return "/cart/cartList";
	}
	
	@RequestMapping(value = "/cart/cartRegist/{product_number}/{user_number}")
	public String cart1(@ModelAttribute("cart") CartRequest cartReq ,@PathVariable("product_number") int product_number, 
			@PathVariable("user_number") long user_number, Model model) {
		List<Product> productList = productDao.selectAllbyproductNum(user_number);
		model.addAttribute("productList",productList);
		return "/cart/cartRegist";
	}
//	spring.dao.CartDao.insertCart(CartDao.java:63)
//	spring.service.CartService.regist(CartService.java:21)
//	spring.controller.CartController.cart(CartController.java:41)
	
}
