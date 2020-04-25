package com.niit.tlc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.tlc.model.Address;
import com.niit.tlc.model.Customer;
import com.niit.tlc.model.Product;
import com.niit.tlc.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService serv;
	
	@PostMapping("/saveProduct")   //ab kal pahle product ka baaki data save karana h uske baad image ka address alag se save karna h
	public String uploadImage(@ModelAttribute("product") Product product) {
		int prdct=13;
		product.setProductId("p"+ prdct++);
		serv.saveProduct(product);
		
		return "redirect:/productlistAdmin";
	}
	
	@PostMapping("/updateProductsave")
	public ModelAndView updateProductsave(@ModelAttribute("product") Product product) {
		serv.saveProduct(product);
		
		ModelAndView mav=null;
		List<Product> productList=serv.findAllProducts();
		productList.get(0).getProductName();
		mav=new ModelAndView("product-list-admin");
		mav.addObject("productlist", productList);
		return mav;
	}
	
	
	@GetMapping("/uploadImagedemo")
	public String uploadImageDemo(Model model) {
		Product p1=new Product();
		model.addAttribute("product", p1);
		return "product_validateAdmin";
	}
	
	@GetMapping("/tempdata")
	public String tempData(Model model) {
		String tt="p3";
		Product p=serv.findById(tt);
		String filLoc=p.getFileLocation();
		model.addAttribute("fileloc", p.getFileLocation());
		//req.getSession().setAttribute("user", c.getFirstName());
		return "temp";
	}
	
	@RequestMapping("/productTv")
	public ModelAndView productTv() {
		ModelAndView mav;
		List<Product> listProducts=serv.findByproductCategory("Tv");
		mav = new ModelAndView("temp2");
		mav.addObject("listproducts", listProducts);
//		System.out.println(listProducts.get(0).getProductId());
//		System.out.println(listProducts.get(1).getProductName());
//		System.out.println(listProducts.get(0).getProductDescription());
		return mav;
	}
	
	@RequestMapping("/productMob")
	public ModelAndView productMobile() {
		ModelAndView mav;
		List<Product> listProducts=serv.findByproductCategory("Mobile");
		mav = new ModelAndView("temp2");
		mav.addObject("listproducts", listProducts);
		System.out.println(listProducts.get(0).getProductId());
		System.out.println(listProducts.get(1).getProductName());
		System.out.println(listProducts.get(0).getProductDescription());
		return mav;
	}
	
	
	@RequestMapping("/buyproduct")
	public ModelAndView buyProduct(HttpServletRequest req) {
		ModelAndView mav=null;
		HttpSession sess=null;
		
		String prdtid=req.getParameter("id");
		int pprice=Integer.parseInt(req.getParameter("prodPrice"));
		String pname=req.getParameter("prodName");
		
		Address address=new Address();
		mav=new ModelAndView("address");
		mav.addObject("address", address);
		
		req.getSession().setAttribute("prdtid",prdtid );
		req.getSession().setAttribute("prodPrice",pprice );
		req.getSession().setAttribute("prodName",pname );
		//model.addAttribute("address", address);
		
//		 mav = new ModelAndView("index");
//		 String s=(String) req.getSession().getAttribute("user");
//			System.out.println(s);
//		
			//System.out.println(sess.getSessionContext().getSession("user"));
			
		
//		//mav = new ModelAndView("index");
//		 if(s!=null) {
//			 System.out.println("if");
//		 }
//		 
//		 else {
//			 System.out.println("esle");
//			 mav = new ModelAndView("index");
//		 }
		
		return mav;
		
	}
	
	@GetMapping("/productlistAdmin")
	public ModelAndView productListAdmin()
	{
		ModelAndView mav=null;
		
		List<Product> productList=serv.findAllProducts();
		productList.get(0).getProductName();
		mav=new ModelAndView("product-list-admin");
		mav.addObject("productlist", productList);
		
		return mav;
	}
	
	@RequestMapping("/updateproduct")
	public ModelAndView updateProduct(@RequestParam("prodId") String pid) {
		
		 ModelAndView mav = new ModelAndView("update-productList");
	     Product product = serv.get(pid);
	     mav.addObject("product", product);
	      
	     return mav;
		
	}
	
	@RequestMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("prodIddel") String pid) {
		
	     serv.delete(pid);
	     return "redirect:/productlistAdmin";
		
	}
}