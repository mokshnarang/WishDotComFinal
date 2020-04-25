package com.niit.tlc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.tlc.model.Address;
import com.niit.tlc.model.Customer;
import com.niit.tlc.repository.AddressRepository;

@Service
@Transactional
public class AddressService {

	@Autowired
	AddressRepository addRepo;
	
	public void saveAddress(Address address) {
		addRepo.save(address);
	}
	
	public Address findByCustomer(Customer customer) {
		
		return addRepo.findByCustomer(customer);
	}
	
	public Address findById(String aid) {
		return addRepo.findById(aid).get();
	}
}
