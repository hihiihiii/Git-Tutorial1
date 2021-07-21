package spring.service;

import spring.dao.ReservDao;
//import spring.exception.ReservationExistingException;
import spring.vo.Reservation;
import spring.vo.ReservationRequest;


public class ReservationRegisterService {

	private ReservDao reservDao;
	
	public ReservDao getReservDao() {
		return reservDao;
	}
	
	public void setReservDao(ReservDao reservDao) {
		this.reservDao = reservDao;
	}
	
	public ReservationRegisterService(ReservDao reservDao) {
		this.reservDao = reservDao;
	}
	
	public Reservation regist(ReservationRequest req) {
		
		//Reservation reserv = reservDao.getReserv_index();
		//if (reserv != null) {
		//	throw new ReservationExistingException("dud");
		//}
		Reservation newReservation = new Reservation(
				req.getReserv_id(), req.getReserv_email(), req.getReserv_type(), req.getReserv_price(),
				req.getReserv_person(),req.getReserv_size(),req.getReserv_bed(),
				req.getReserv_option(),req.getReserv_from(),req.getReserv_to());
		reservDao.insert(newReservation);
			
		return newReservation;
	}
}