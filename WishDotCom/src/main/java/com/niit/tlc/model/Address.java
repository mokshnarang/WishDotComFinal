package com.niit.tlc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;

@Entity
@Table(name = "address")
public class Address {

	@Id   
	@Column(name = "address_id")
	private String addressId;
	
	@Column(name = "house_no")
	private String houseNumber;
	
	@Column(name = "city")
	private String city;
	
	@Column(name = "pincode")
	private int pincode;
	
	@Column(name = "state")
	private String state;
	
	@OneToOne
	@JoinColumn(name = "phoneno")
	private Customer customer;
	
//	@Column(name = "phoneno")
//	private Long phoneNo;

	public String getHouseNumber() {
		return houseNumber;
	}

	public String getAddressId() {
		return addressId;
	}

	public void setAddressId(String addressId,HttpServletRequest req) {

		req.getSession().setAttribute("addid", addressId);
		System.out.println("add id is:" +req.getAttribute("addid"));
		
		this.addressId = addressId;
		
	}

	public void setHouseNumber(String houseNumber) {
		System.out.println(houseNumber);
		this.houseNumber = houseNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

//	public Long getPhoneNo() {
//		return phoneNo;
//	}
//
//	public void setPhoneNo(Long phoneNo) {
//		this.phoneNo = phoneNo;
//	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	
}
