package com.niit.tlc.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.niit.tlc.exception.ResourceNotFoundException;
import com.niit.tlc.model.Order;
import com.niit.tlc.model.Product;
import com.niit.tlc.repository.OrderRepository;
import com.niit.tlc.repository.ProductRepository;



@RestController  
@CrossOrigin(origins="http://localhost:4200")  
//@RequestMapping(value="/api") 
public class ProductRestController {

	@Autowired OrderRepository orepo;
		
		@Autowired
	    private ProductRepository prepo;
		
		 @GetMapping("/products")  
		    public List<Product> getAllProducts() {  
		         return prepo.findAll();    
		    }  
		 
		 /** 
		  * ResponseEntity represents an HTTP response, including headers, body, and status.
		  */
		 @GetMapping("/products/{productId}")
			public ResponseEntity<Product> getProductById(@PathVariable(value = "productId") String productId)
					throws ResourceNotFoundException {
				Product product = prepo.findById(productId)
						.orElseThrow(() -> new ResourceNotFoundException("Product not found for this id :: " + productId));
				return ResponseEntity.ok().body(product);
			}
		 
		 @GetMapping("/orderss")  
		    public List<Order> getAllOrders() {  
		         return orepo.findAll();    
		    }
		 
		 @GetMapping("/orders/{phoneNo}")
		 public List<Object[]> getOrderList(@PathVariable(value = "phoneNo") Long phn){
			 //List<Object[]> a=orepo.findOrdersList(phn);
			 //System.out.println("phone"+ a[0]);
			 return orepo.findOrdersList(phn);
		 }
		 
		 @PostMapping("/products")  
		    public Product saveProduct(@Valid @RequestBody Product product) {  
			 return prepo.save(product)  ;
		       	          
		    }  
		 
		 @DeleteMapping("/products/{productId}")
		    public Map<String, Boolean> deleteProduct(@PathVariable(value = "productId") String productId) 
		    		throws ResourceNotFoundException{
			 Product product = prepo.findById(productId)
						.orElseThrow(() -> new ResourceNotFoundException("Product not found for this id :: " + productId));
		        prepo.delete(product);
		        
		        Map<String, Boolean> response = new HashMap<>();
				response.put("deleted", Boolean.TRUE);
				return response;
		 }
		 
		 @PutMapping("/products/{productId}")
		    public ResponseEntity<String> updateProduct(@PathVariable(value = "productId") String productId,
					@Valid @RequestBody Product p) throws ResourceNotFoundException {
		     
//			 Product product = prepo.findById(productId)
//						.orElseThrow(() -> new ResourceNotFoundException("Product not found for this id :: " + productId));
			 prepo.updateProd(productId, p.getProductName(), p.getProductDescription(), p.getProductBrand(), p.getProductCategory(), p.getProductPrice(),p.getProductId());
			    		   
//			    product.setProductBrand(p.getProductBrand());
//			    product.setProductCategory(p.getProductCategory());
//			    product.setProductId(p.getProductId());
//			    product.setProductName(p.getProductName());
//			    product.setProductDescription(p.getProductDescription());
//			    product.setProductPrice(p.getProductPrice());
//			    
//			    final Product updatedProduct = prepo.save(product);
				//return ResponseEntity.ok(updatedProduct);
			 return ResponseEntity.ok("okay");
		    }
		 
		 
	
	
	
}
