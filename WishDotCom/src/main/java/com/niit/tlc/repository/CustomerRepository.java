package com.niit.tlc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.niit.tlc.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer,Long> {

	Customer findByPhoneNo(Long phoneNo);

	Customer findByFirstName(String firstName);
	
	@Modifying
	@Query(" update Customer set active_status=0 where phoneno=?1")
	public void updateCustomerStatus(Long phn);
	

	@Modifying
	@Query(" update Customer set active_status=1 where phoneno=?1")
	public void updateCustomerStatusActivate(Long phn);
	

}
