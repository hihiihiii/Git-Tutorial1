package spring.service;

import java.util.List;

import spring.dao.CartDao;
import spring.exception.CartNotExistingException;
import spring.vo.Cart;
import spring.vo.CartRequest;

public class CartService {
	private CartDao cartDao;

	public CartService(CartDao cartDao) {
		this.cartDao = cartDao;
	}
	
	public void regist(long user_number, int product_number,CartRequest cartReq) {
		Cart cart = cartDao.selectByCart_number(cartReq.getCart_number());
		System.out.println("======테스트2====="+user_number);
		System.out.println("======테스트2====="+product_number);
		if(cart != null) {
			throw new CartNotExistingException();
		}
		
		Cart newCart = new Cart(user_number,product_number,cartReq.getCart_amount());
		cartDao.insertCart(newCart,user_number,product_number);
	
//		spring.dao.CartDao.insertCart(CartDao.java:63)
//		spring.service.CartService.regist(CartService.java:21)
//		spring.controller.CartController.cart(CartController.java:41)
	}
	
	public void update(int cart_number, int newcart_amount) {
		Cart cart = cartDao.selectByCart_number(cart_number);
		
		if(cart == null) {
			throw new CartNotExistingException();
		}
		
		cart.cartUpdate(newcart_amount);
		
		cartDao.updateCart(cart);
	}
	
	public void delete(int cart_number) {
		Cart cart = cartDao.selectByCart_number(cart_number);
		
		if(cart == null) {
			throw new CartNotExistingException();
		}
		
		cartDao.deleteCart(cart_number);
	}
	
	
	public void deleteAll(long user_number) {
		List<Cart> cartAllList = cartDao.cartALLList(user_number);
		
		if(cartAllList == null) {
			throw new CartNotExistingException();
		}
		cartDao.deleteAllCart(user_number);
	}
	
	
	
}
