package com.niit.tlc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.tlc.model.Address;
import com.niit.tlc.model.Customer;
import com.niit.tlc.model.Order;
import com.niit.tlc.model.Payment;
import com.niit.tlc.model.Product;
import com.niit.tlc.service.AddressService;
import com.niit.tlc.service.LoginService;
import com.niit.tlc.service.OrderService;
import com.niit.tlc.service.PaymentService;
import com.niit.tlc.service.ProductService;

@Controller
public class OrderController {

	public int ord=10 ,tra=10;
	@Autowired
	private LoginService lserv;
	
	@Autowired
	private ProductService serv;
	
	@Autowired
	private OrderService oserv;
	
	@Autowired
	private PaymentService payserv;
	
	@Autowired
	private AddressService addserv;
	
	@PostMapping("/confirmOrder")
	public String confirmOrder(@ModelAttribute("payment") Payment payment,@ModelAttribute("order") Order order,@RequestParam("orderamt") int orderAmt,@RequestParam("customerid") Long custid,@RequestParam("productId") String pid,HttpServletRequest req) {
		
		Customer cust=lserv.findById(custid);
		Product prdct=serv.findById(pid);
		String aid=(String)req.getSession().getAttribute("addid");
		Address add=addserv.findById(aid);
		
		System.out.println("order controller se ord id:"+req.getSession().getAttribute("addid"));
		
		payment.setTransactionId("TRA"+ tra++,req);
		payment.setCustomer(cust);
		payserv.savePayment(payment);
		
		String trnsctid=(String)req.getSession().getAttribute("trnsctid");
		Payment pay =payserv.findById(trnsctid);
		
		order.setOrderId("ord"+ ord++);
		order.setCanceledOrder(1);
		order.setOrderAmt(orderAmt);
		order.setCustomer(cust);
		order.setProduct(prdct);
		order.setAddress(add);
		order.setPayment(pay);
		order.setDeliveryStatus(0);
	
		
		oserv.saveOrder(order);
		return "welcome";
	}
	
	@RequestMapping("/cancelorder")
	public ModelAndView cancelOrder(@RequestParam("cnclOrdrId")String oid,HttpServletRequest req) {
		oserv.delete(oid);
		
        Customer cust1= (Customer)req.getSession().getAttribute("userCust");
        ModelAndView mav=null;		

		List<Order> ordrdprdcts=oserv.findByCustomersList(cust1.getPhoneNo());
		
		mav= new ModelAndView("orderList");
		mav.addObject("ordersList",ordrdprdcts);
		
		return mav;
	}
	
	@RequestMapping("/deliverdOrders")
	public ModelAndView deliverdOrders() {
		ModelAndView mav=null;
		List<Order> delvrdprdcts=oserv.findByDeliveryStatus(1);
		
		mav=new ModelAndView("delivered-orders");
		mav.addObject("delvrdprdcts", delvrdprdcts);
		
		return mav;
	}
	
	@RequestMapping("/undeliverdOrders")
	public ModelAndView undeliverdOrders() {
		ModelAndView mav=null;
		List<Order> delvrdprdcts=oserv.findByDeliveryStatus(0);
		
		mav=new ModelAndView("undelivered-orders");
		mav.addObject("undelvrdprdcts", delvrdprdcts);
		
		return mav;
	}
	
	@RequestMapping("makeDeliver")
	public String changeDelStatus(@RequestParam("deliverOrdId") String oid) {
		oserv.changeDelStatus(oid);
		
		return "redirect:/undeliverdOrders";
	}
}
