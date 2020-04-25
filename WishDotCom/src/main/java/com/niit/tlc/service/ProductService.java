package com.niit.tlc.service;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.niit.tlc.model.Customer;
import com.niit.tlc.model.Product;
import com.niit.tlc.repository.ProductRepository;

@Service
@Transactional
public class ProductService {

	@Autowired
	private ProductRepository prepo;
	
	public void saveImage(MultipartFile imageFile) throws Exception{
//		String folder="src//main//resources/static//";
//		byte[] bytes=imageFile.getBytes();
//	    Path path=Paths.get(folder + imageFile.getOriginalFilename());
//	    System.out.println(path);
//	    Files.write(path, bytes);
//	    System.out.println(bytes);
	}
	
	public void saveProduct(Product product) {
		System.out.println("service");
		prepo.save(product);
	}
	
	public Product findById(String pid) {
		return prepo.findById(pid).get();
	}
	
	 public List<Product> findByproductCategory(String cat){
	    	return prepo.findByproductCategory(cat);
	    }
	 
	 public List<Product> findAllProducts(){
		 return prepo.findAll();
	 }
	 
	 public Product get(String id) {
	    	return prepo.findById(id).get();
	    }
	 
	 public void delete(String id) {
	    	prepo.deleteById(id);
	    }
}
