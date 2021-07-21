package spring.service;

import spring.dao.ProductDao;
import spring.exception.AlreadyExistingProductException;
import spring.vo.Product;
import spring.vo.ProductRequest;

public class ProductRegisterService {
	private ProductDao productDao;

	public ProductRegisterService(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	public void regist(ProductRequest proReq) {
		Product product = productDao.selectByProduct_number(proReq.getProduct_number());
		
		if(product != null) {
			throw new AlreadyExistingProductException("product_name"+proReq.getProduct_name());
		}else {
			Product newProduct = new Product(proReq.getProduct_name(),proReq.getProduct_price(),
					proReq.getProduct_url(),proReq.getProduct_description());
			productDao.insertProduct(newProduct);
		}
		
	}
}
