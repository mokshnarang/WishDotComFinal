package com.niit.tlc;
import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.ui.Model;

import com.niit.tlc.controller.AdminHomeController;
import com.niit.tlc.controller.CustomerCredController;
import com.niit.tlc.controller.ProductController;
import com.niit.tlc.model.Customer;
import com.niit.tlc.model.Product;
import com.niit.tlc.service.LoginService;
import com.niit.tlc.service.ProductService;



	public class CustomerCredControllerTest {

		@InjectMocks
		CustomerCredController  customerCredController;
		
		@InjectMocks
		ProductController  productController;
		
		@InjectMocks
		AdminHomeController adminController;
		

		@Mock
		private ProductService serv;
		

		@Mock
		private LoginService lService;
		
		@Spy
		Model model;
		
		
		@Before
		public void init()
		{
			MockitoAnnotations.initMocks(this);
		}
		
		@Test
		public void viewRegisterPageTest()
		{
			Assert.assertEquals( customerCredController.viewRegisterPage(model),"customer-form");
		}

	@Test
	public void createCustomerTest()
	{
		Customer c1= new Customer();
		c1.setEmailId("harshi@123");
		
		c1.setFirstName("harhsita");
		c1.setLastName("sharma");
		c1.setPassword("har123");
		c1.setPhoneNo((long) 700797829);
		
		lService.saveCustomer(c1);
		verify(lService,times(1)).saveCustomer(c1);
		
	}
	@Test
	 public void loginCustomerTest()
	 {
	 Long phoneNo= (long) 700797929;
	 Customer c=new Customer();
	 c.setPhoneNo((long) 700797829);
	 c.setPassword("root");
	when(lService.findByPhoneNo(phoneNo)).thenReturn(c);
	 
	Customer c1=   lService.findByPhoneNo((long)700797820);

	
	assertEquals(c.getPassword(),"cm9vdA==");

	//assertEquals(loginController.loginDealer(req,d,model1),"products");
	 verify(lService,times(1)).findByPhoneNo((long)700797820);
	 }
	

	@Spy
	HttpServletRequest req;

	@Spy
	 HttpSession ses;

	@Test
	public void logoutTest()
	{    when(req.getSession()).thenReturn(ses);
	 Assert.assertEquals(customerCredController.logout(req),"index");
	}

	
	@Test
	public void createProductTest()
	{
		Product product= new Product();
		product.setProductId("12");
		product.setProductName("Tv");
		product.setProductBrand("lg");
	product.setProductCategory("led");
	product.setProductPrice(3000);
	product.setProductDescription("company gives subscription");
	serv.saveProduct(product);
	
		verify(serv,times(1)).saveProduct(product);
	
}
	
	

	}