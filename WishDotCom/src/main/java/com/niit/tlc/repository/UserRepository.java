package com.niit.tlc.repository;

import org.springframework.data.repository.CrudRepository;

import com.niit.tlc.model.Customer;

public interface UserRepository extends CrudRepository<Customer,String> {
	public Customer findByPhoneNo(String phoneNo);

}
