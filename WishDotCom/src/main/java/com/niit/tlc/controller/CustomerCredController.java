package com.niit.tlc.controller;


import java.nio.charset.StandardCharsets;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.tlc.model.Customer;
import com.niit.tlc.model.Order;
import com.niit.tlc.service.LoginService;
import com.niit.tlc.service.OrderService;



@Controller
public class CustomerCredController {
	
	

	@Autowired
	private LoginService lservice;
	
	@Autowired
	private OrderService oserv;

	
	@RequestMapping("/")
	public String viewHomePage() {

	return "index";
	}
	
	@GetMapping("/LoginPage")
	public String LoginPage(){
		return "login-customer";
	}
	
	@RequestMapping("/customerList")
	public String viewHomePage(Model model)
	{
		List <Customer> listcustomer=lservice.listAll();
		model.addAttribute("listcustomer",listcustomer);
		return "customerList";
	}
	
	@RequestMapping("/register")
	public String viewRegisterPage(Model model) {
	Customer customer = new Customer();
	model.addAttribute("customer", customer);
	return "customer-form";

	}
//	
//	@PostMapping("/saveCustomer")
//	 public String saveCustomer(@ModelAttribute("customer") Customer cust,ModelMap theModel ) {
//	     lservice.saveCustomer(cust);
////	     Customer theCustomer = new Customer();
////			theModel.addAttribute("customer", theCustomer);
//	     return "login-customer";
//	}
	
	
	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("customer") Customer customer) {
	lservice.saveCustomer(customer);

	return "login-customer";
	}

	
	@GetMapping("/login")
	public String showLoginForm(Model theModel) {
	//Dealer d = new Dealer();
	//theModel.addAttribute("dealer", d);
	return "login-customer";
	}
	
	
	@PostMapping("/loginCustomer")
	public ModelAndView loginCustomer(@RequestParam("phoneNo") Long phoneNo,@RequestParam("password") String pass,HttpServletRequest req ,@ModelAttribute("customer") Customer customer) {
		//Long phoneNo=req.getParameter("phoneNo");
		//String pass=req.getParameter("password");// we do thisin setter of pojo
	
	String pass2=encryptPass(pass);
//		
//		StringTokenizer st = new StringTokenizer(email, "@");
//		String s2 = st.nextToken();
		
		 ModelAndView mav=null;
		 //Customer c = lservice.findByPhoneNo(phoneNo);
		 Customer c = lservice.findById(phoneNo);
		 
		 if(c==null || c.getActiveStatus()==0) {
			 if(c==null) {
			 mav= new ModelAndView("login-customer");
				mav.addObject("error", "User Doesn't Exists");
			 }
			 else {
				 mav=new ModelAndView("login-customer");
				 mav.addObject("error", "user is blocked Temporarily");
			 }
		 }
		 else  if(phoneNo.equals(c.getPhoneNo()) && pass2.equals(c.getPassword()))
		 {
					 
		 req.getSession().setAttribute("user", c.getFirstName());
		 req.getSession().setAttribute("userCust", c);
		 
//		  mav = new ModelAndView("products");
//		 mav.addObject("dealer", d);
//		 
//		 List<Product> listProducts = service.listAll();
//		    mav.addObject("listProducts", listProducts);
//	     		    
		 mav= new ModelAndView("welcome");
		 } 
		 
		 else
		 {mav= new ModelAndView("login-customer");
			mav.addObject("error", "Invalid Username or Password");
		 }
		 
		 return mav;
	}
	
	@GetMapping("/loginCustomer")
	public String viewIndexPage() {
		return "welcome";
	}
	
	@RequestMapping("/update")
	public ModelAndView editCustomerForm(@ModelAttribute("customer") Customer customer) {
	    ModelAndView mav = new ModelAndView("viewP");
	
	   
	  customer=  lservice.saveCustomer(customer);
	    
	    mav.addObject("customer", customer);
	 
	    return mav;
	}
	
	@RequestMapping("/viewDetails")
	public ModelAndView showEditProductPage(HttpServletRequest request) {
		 ModelAndView mav = new ModelAndView("viewP");
		   
		   Customer cust=(Customer) request.getSession().getAttribute("userCust");
		   Long custphn=cust.getPhoneNo();
   	    
		    Customer customer = lservice.findById(custphn);
		   
		    mav.addObject("customer", customer);
		 
		    return mav;
	}
	
	@RequestMapping("/orderList")
	public ModelAndView viewOrders(HttpServletRequest req) {
		ModelAndView mav=null;
		
		
		
		Customer cust1= (Customer)req.getSession().getAttribute("userCust");
		
		List<Order> ordrdprdcts=oserv.findByCustomersList(cust1.getPhoneNo());
		
		mav= new ModelAndView("orderList");
		mav.addObject("ordersList",ordrdprdcts);
		System.out.println(ordrdprdcts);

		System.out.println(ordrdprdcts.get(0).getProduct().getFileLocation());
		
		return mav;
	}
	
	@RequestMapping("/customerDashboard")
	public String viewDashboard() {
		return "customerDashboard";
	}
	
	
	
	private String encryptPass(String pass) {
		Base64.Encoder encoder = Base64.getEncoder();
		String normalString = pass;
		String encodedString = encoder.encodeToString(
	    normalString.getBytes(StandardCharsets.UTF_8) );
		return encodedString;
	}
	
	@RequestMapping("/delete")
	public String unactivateCustomer(@RequestParam("phoneNo") long phoneNo) {
	lservice.updateCustomerStatus(phoneNo);
	return "redirect:customerList";
	}
	
	@GetMapping("/logout")
	 public String logout(HttpServletRequest req) {
	  req.getSession().invalidate();
	  return "index";
	 }

	@RequestMapping("/activateAc")
	public String activateCustomer(@RequestParam("phoneNo") long phoneNo) {
	lservice.updateCustomerStatusActivate(phoneNo);
	return "redirect:customerList";
	}
	
}
