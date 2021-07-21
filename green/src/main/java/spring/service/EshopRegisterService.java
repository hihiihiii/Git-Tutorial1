package spring.service;

import spring.dao.ProductDao;
import spring.vo.Eshop;
import spring.vo.EshopRequest;



public class EshopRegisterService {

	private ProductDao productDao;

	public EshopRegisterService(ProductDao productDao) {
		this.productDao = productDao;
	}
	
	public void regist(EshopRequest req) {
		
		//Reservation reserv = reservDao.getReserv_index();
		//if (reserv != null) {
		//	throw new ReservationExistingException("dud");
		//}
		System.out.println("테스트아이디2"+req.getEshop_id());
		Eshop newEshop = new Eshop(
				 req.getEshop_price(), req.getEshop_name(), req.getEshop_amount(), req.getEshop_id());
		productDao.insertEshop(newEshop);

	}
}