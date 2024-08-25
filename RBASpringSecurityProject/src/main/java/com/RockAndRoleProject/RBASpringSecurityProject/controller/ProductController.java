package com.RockAndRoleProject.RBASpringSecurityProject.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.RockAndRoleProject.RBASpringSecurityProject.pojo.Product;
import com.RockAndRoleProject.RBASpringSecurityProject.serviceimpl.ProductServiceImpl;

//Marks the class as a REST controller (@RestController), which means it handles HTTP requests and responses with JSON or XML.
//The @RequestMapping("/") annotation specifies that all request mappings in this class will be relative to the root URL ("/")
@RestController
@RequestMapping("/")
public class ProductController {

	// Injects an instance of ProductServiceImpl into the controller.
	// @Autowired allows Spring to automatically inject the dependency
	@Autowired
	private ProductServiceImpl serviceImpl;

	// It handles requests to add a new product
	@PostMapping("/products")
	public ResponseEntity<String> addItemSave(@RequestBody Product product) {
	    try {
	        serviceImpl.addItemSave(product);
	        return ResponseEntity.ok("Product added successfully!");
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
	                             .body("Error adding product: " + e.getMessage());
	    }
	}

	
	//all product list and pagination per page record 10 
	@GetMapping("/allProducts")
	public Page<Product> getAllProductPage( @RequestParam(defaultValue = "0") int page, 
	        @RequestParam(defaultValue = "10") int size) {
	    Pageable pageable = PageRequest.of(page, size);
	    System.out.println("pageable======>>>>>>" + pageable);
	    return serviceImpl.getAllItems(pageable);
	}



	@DeleteMapping("/products/{id}")
	public ResponseEntity<String> deleteItemById(@PathVariable("id") long productID) {
	    try {
	        serviceImpl.deleteItemById(productID);
	        return ResponseEntity.ok("Deleted successfully");
	    } catch (Exception e) {
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
	                             .body("Error deleting product: " + e.getMessage());
	    }
	}

}
