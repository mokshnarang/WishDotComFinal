package com.niit.tlc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {

	@Id
	@Column(name = "order_id")
	private String orderId;
	
	@Column(name = "order_amt")
	private int orderAmt;
	
	@Column(name = "canceled_order")
	private int canceledOrder;
	
	@OneToOne
	@JoinColumn(name = "phoneno")
	private Customer customer;
	
	@OneToOne
	@JoinColumn(name = "product_id")
	private Product product;
	
	@OneToOne
	@JoinColumn(name = "address_id")
	private Address address;
	
	@OneToOne
	@JoinColumn(name = "transaction_id")
	private Payment payment;
	
	@Column(name = "del_status")
	private int deliveryStatus;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public int getOrderAmt() {
		return orderAmt;
	}

	public void setOrderAmt(int orderAmt) {
		this.orderAmt = orderAmt;
	}

	public int getCanceledOrder() {
		return canceledOrder;
	}

	public void setCanceledOrder(int canceledOrder) {
		this.canceledOrder = canceledOrder;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Payment getPayment() {
		return payment;
	}

	public void setPayment(Payment payment) {
		this.payment = payment;
	}

	public int getDeliveryStatus() {
		return deliveryStatus;
	}

	public void setDeliveryStatus(int deliveryStatus) {
		this.deliveryStatus = deliveryStatus;
	}
	
	
	
}
