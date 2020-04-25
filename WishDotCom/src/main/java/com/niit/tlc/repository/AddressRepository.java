package com.niit.tlc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.tlc.model.Address;
import com.niit.tlc.model.Customer;


public interface AddressRepository extends JpaRepository<Address, String> {

	Address findByCustomer(Customer customer);
}