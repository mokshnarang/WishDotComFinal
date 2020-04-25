package com.niit.tlc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.tlc.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, String> {

}
