package com.niit.tlc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.niit.tlc.model.Product;

public interface ProductRepository extends JpaRepository<Product,String> {

	public List<Product> findByproductCategory(String category);
	
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query("UPDATE Product p SET p.productId=?1,p.productName=?2,p.productDescription=?3,p.productBrand=?4,p.productCategory=?5,p.productPrice=?6 WHERE productId=?7")
	public void updateProd(String pid,String pname,String pdesc,String pbrand,String pcat,int pprice,String prdid);
}
