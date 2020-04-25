package com.niit.tlc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.niit.tlc.model.Payment;
import com.niit.tlc.repository.PaymentRepository;

@Service
@Transactional
public class PaymentService {

	@Autowired
	private PaymentRepository payRepo;
	
	public void savePayment(Payment payment) {
		payRepo.save(payment);
	}
	
	public Payment findById(String pid) {
		return payRepo.findById(pid).get();
	}
}
