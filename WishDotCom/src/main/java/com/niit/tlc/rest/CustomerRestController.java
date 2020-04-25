package com.niit.tlc.rest;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.niit.tlc.model.Customer;
import com.niit.tlc.repository.CustomerRepository;


@RestController  
@CrossOrigin(origins="http://localhost:4200")
public class CustomerRestController {
	

	
	@Autowired
	private CustomerRepository crepo;


	     @PostMapping("/register")
	     public String register(@RequestBody Customer customer) {
	         crepo.save(customer);
	         return "Hi " + customer.getFirstName() + " your Registration process successfully completed";
	     }
	     
	     @GetMapping("/getAllCustomers")
	     public List<Customer> findAllUsers() {
	         return crepo.findAll();
	     }

	     @PostMapping("/login/{phoneNo}")
	     public Customer FindCustomer(@RequestBody Customer customer) {
	    	 Long phoneNo =customer.getPhoneNo();
	    	 String password =customer.getPassword();
	         return crepo.findById(phoneNo).get();
	     }
	     
	     @GetMapping("/findCustomer/{phoneNo}")
	     public Optional<Customer> findUser(@PathVariable Long phoneNo) {
	         return crepo.findById(phoneNo);
	     }
	     
	     @PostMapping("/findCustomer/{phoneNo}")
	     public Optional<Customer> findUserr(@PathVariable Long phoneNo) {
	         return crepo.findById(phoneNo);
	     }

	     @DeleteMapping("/cancel/{phoneNo}")
	     public List<Customer> cancelRegistration(@PathVariable Long phoneNo) {
	         crepo.deleteById(phoneNo);
	         return crepo.findAll();
	     }
	 
	 }

