package com.RockAndRoleProject.RBASpringSecurityProject.service;

import java.util.List;

import com.RockAndRoleProject.RBASpringSecurityProject.pojo.Product;



public interface ProductService {
	
	// insert product 
	public Product addItemSave(Product product);
	
	// list product
	public List<Product> getAllItems();
	
	//delete product
	public String deleteItemById(long productId);
	
	//update product
	public Product getUpadteItemById(long productId);
}
