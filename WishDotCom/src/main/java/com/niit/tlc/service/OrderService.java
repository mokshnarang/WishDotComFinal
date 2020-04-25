package com.niit.tlc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.tlc.model.Address;
import com.niit.tlc.model.Order;
import com.niit.tlc.repository.OrderRepository;

@Service
@Transactional
public class OrderService {

	@Autowired
	private OrderRepository ordRepo;
	
	public void saveOrder(Order order) {
		ordRepo.save(order);
	}
	
	public List<Order> findByCustomersList(Long phn) {
		
		return ordRepo.findByCustomersList(phn);	 
	}
	
	public void delete(String id) {
    	ordRepo.deleteById(id);
    }
	
	public List<Order> findByDeliveryStatus(int status){
		return ordRepo.findBydeliveryStatus(status);
	}
	
	public void changeDelStatus(String oid) {
		ordRepo.changeDelStatus(oid);
	}
}
