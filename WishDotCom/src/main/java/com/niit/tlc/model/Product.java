package com.niit.tlc.model;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.annotations.GeneratorType;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Entity
@Table(name="product")
public class Product {

	//int prdct=5;
	//@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	@Column(name = "product_id")
	private String productId;
	
	@Column(name = "product_name")
	private String productName;
	
	@Column(name = "product_brand")
	private String productBrand;
	
	@Column(name="product_price")
	private int productPrice;
	
	@Column(name = "product_desc")
	private String productDescription;
	
	@Column(name = "product_cat")
	private String productCategory;
	
	@Column(name = "product_img_name")
	private String fileLocation;


	public String getFileLocation() {
		return fileLocation;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}
  
	public void setFileLocation(MultipartFile imageFile) throws IOException {
		System.out.println("model");
		String folder="src//main//resources/static//productimages//";
	    byte[] bytes=imageFile.getBytes();
	    Path path=Paths.get(folder + imageFile.getOriginalFilename());
	    System.out.println(path);
	    Files.write(path, bytes);
	    System.out.println(bytes); 
		this.fileLocation =  imageFile.getOriginalFilename();
	}
	//,@RequestParam("imageFile") MultipartFile imageFile ,,,String fileLocation

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductBrand() {
		return productBrand;
	}

	public void setProductBrand(String productBrand) {
		this.productBrand = productBrand;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	
}
