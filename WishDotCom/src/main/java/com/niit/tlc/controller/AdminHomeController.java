package com.niit.tlc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class AdminHomeController{
	
	@RequestMapping("/admin")
	public String adminPage(){
		
		return "adminLogin";
	}
	
	@GetMapping("/adminHome")
	public String AdminPage(){
		return "admin";
	}
	@PostMapping("/adminLogin")
	public String checkUser(HttpServletRequest req,Model m) {
			{
		String name=req.getParameter("name");
		String password=req.getParameter("password");
		
		if(password.equals("admin")&&(name.equals("admin")))
		{		
			return "admin";
		}
		else 
		{
			String msg="Sorry "+name+". You entered Incorrect Password";
			m.addAttribute("message",msg);
			return "error_page";
			
		}

	}
	}
//	@RequestMapping("/customerList")
//	public String customerList() {
//		return "customerList";
//	}
	
	
	
	@RequestMapping("/customerManagement")
	public String customerManagement(Model model){
		
//		
//		List<Customer> customers=customerService.getAllCustomers();
//		model.addAttribute("customers",customers);
		
		return "customerManagement";
	}
	
	@RequestMapping("/productManagement")
	public String productManagement(Model model) {
		return "productManagement";
	}

//	@Override
//	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response,) {
//		ModelAndView modelAndView=new ModelAndView();
//		CustomError error=new CustomError();
//	
//		
//		error.setMessage("Your request is not valid.Please Enter a valid request.");
//		modelAndView.addObject("customError", error);
//		modelAndView.setViewName("error_page");
//		
//		return modelAndView;
//	}

}
