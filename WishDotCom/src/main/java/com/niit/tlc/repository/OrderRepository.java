package com.niit.tlc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.niit.tlc.model.Order;

public interface OrderRepository extends JpaRepository<Order, String> {
	
	public List<Order> findBydeliveryStatus(int del);

	@Query("from Order where phoneno=?1")
	List<Order> findByCustomersList(Long phn);
	
	@Modifying
	@Query("update Order set del_status=1 where order_id=?1")
	public void changeDelStatus(String oid);
	
	@Query("select orderId,orderAmt,customer.phoneNo,product.productId,payment.transactionId from Order where phoneno=?1")
	public List<Object[]> findOrdersList(Long phoneNo);
	
}
