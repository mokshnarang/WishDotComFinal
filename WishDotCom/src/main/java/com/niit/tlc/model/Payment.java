package com.niit.tlc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.servlet.http.HttpServletRequest;

@Entity
@Table(name = "payment")
public class Payment {

	@Id
	@Column(name = "transaction_id")
	private String transactionId;
	
	@OneToOne
	@JoinColumn(name = "phoneno")
	private Customer customer;


	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId,HttpServletRequest req) {
		req.getSession().setAttribute("trnsctid", transactionId);
		
		this.transactionId = transactionId;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
}
