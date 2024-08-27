package com.RockAndRoleProject.RBASpringSecurityProject.service;



import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.RockAndRoleProject.RBASpringSecurityProject.pojo.Product;



public interface ProductService {
	
	// insert product 
	public Product addItemSave(Product product);
	

	// list and pagination, sorteBy name and description
	public Page<Product> getAllItems(Pageable pageable, String sortBy);
	
	//delete product
	public String deleteItemById(long productId);
	
	//update product
	public Product getUpadteItemById(long productId);
}
