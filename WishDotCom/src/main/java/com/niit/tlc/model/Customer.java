package com.niit.tlc.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

 @Entity
 @Table(name="customer")
 public class Customer {
 	
 	@Id
 	@Column(name = "phoneno")
 	private Long phoneNo;
 	
 	public String getEmailId() {
		return emailId;
	}


	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	@Column(name="emailid",unique = true)
 	private String emailId;
 	

 	
 	@Column(name="first_name")
 	private String firstName;
 	
 	@Column(name="last_name")
 	private String lastName;
 	
 	@Column(name="password")
 	private String password;
 	
 	@Column(name = "active_status")
 	private int activeStatus;
 	

 	public Customer() {
 		super();
 	}

 	public Long getPhoneNo() {
		return phoneNo;
	}


	public void setPhoneNo(Long phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getFirstName() {
 		return firstName;
 	}

 	public void setFirstName(String firstName) {
 		this.firstName = firstName;
 	}
 	

 	public String getLastName() {
 		return lastName;
 	}

 	public void setLastName(String lastName) {
 		this.lastName = lastName;
 	}

 	public String getPassword() {
 		return password;
 	}

 	public void setPassword(String password) {
 		System.out.println("hello model se");
 		Base64.Encoder encoder = Base64.getEncoder();
 		String normalString = password;
 		String encodedString = encoder.encodeToString(
 	    normalString.getBytes(StandardCharsets.UTF_8) );
 		this.password = encodedString;
 	}


	public int getActiveStatus() {
		return activeStatus;
	}


	public void setActiveStatus(int activeStatus) {
		this.activeStatus = activeStatus;
	}
 	
 

 }