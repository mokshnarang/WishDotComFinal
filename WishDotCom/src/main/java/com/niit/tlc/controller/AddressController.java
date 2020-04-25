package com.niit.tlc.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.tlc.model.Address;
import com.niit.tlc.model.Customer;
import com.niit.tlc.model.Order;
import com.niit.tlc.model.Payment;
import com.niit.tlc.service.AddressService;
import com.niit.tlc.service.LoginService;

@Controller
public class AddressController {

	public int addr=9;
	
	@Autowired
	private AddressService addServ;
	
	@Autowired
	private LoginService lserv;
	
	@PostMapping("/saveAddress")
	public String saveAddress(@ModelAttribute("address")Address address,HttpServletRequest req,@RequestParam("customerid") Long custid,@RequestParam("pincode") int pin) {
	
		Customer cust=lserv.findById(custid);
	
		String hn=req.getParameter("houseNumber");
		String city=req.getParameter("city");
		String state=req.getParameter("state");
		
		address.setAddressId("add"+ addr++,req);
		address.setHouseNumber(hn);
		address.setCity(city);
		address.setPincode(pin);
		address.setState(state);
		address.setCustomer(cust);
		
	
		addServ.saveAddress(address);
		
//		Address add=addServ.findByCustomer(cust);
//		System.out.println("address is is"+ add.getCustomer());
		
		
		return "redirect:/checkOut";
		
	}
	
	@GetMapping("/confirmOrd")
	public String confirmOrd(Model model) {
		Order ord=new Order();
		model.addAttribute("order", ord);
		
		return "confirm-order";
	}
	
	@GetMapping("/checkOut")
	public String checkOut(Model model,@ModelAttribute("address") Address address,HttpServletRequest req) {
		
		Payment payment=new Payment();
        model.addAttribute("payment", payment);
        return "checkout-page";
	}
}
