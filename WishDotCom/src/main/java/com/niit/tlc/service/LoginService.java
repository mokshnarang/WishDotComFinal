package com.niit.tlc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.tlc.model.Customer;
import com.niit.tlc.repository.CustomerRepository;


@Service
@Transactional
public class LoginService {
	
	
	public List<Customer> listAll()
	 {
		 return crepo.findAll();
	 }
	
	@Autowired
	private CustomerRepository crepo;
	 public Customer saveCustomer(Customer customer)
	 {
		 return crepo.save(customer);
	 }
	 
	 
	public Customer findByPhoneNo(Long phoneNo) {
		// TODO Auto-generated method stub
		return crepo.findByPhoneNo(phoneNo);
	}
	
	public Customer findById(Long phoneNo) {
		return crepo.findById(phoneNo).get();
	}
	
	public void  delete(Long phoneNo)
	{
		crepo.deleteById(phoneNo);
	}


	public Customer findByFirstName(String firstName) {
		// TODO Auto-generated method stub
		return crepo.findByFirstName(firstName);
	}


	public void updateCustomerStatus(Long phoneNo) {
		crepo.updateCustomerStatus(phoneNo);
	}
	
	public void updateCustomerStatusActivate(Long phoneNo) {
		crepo.updateCustomerStatusActivate(phoneNo);
	}
	
}