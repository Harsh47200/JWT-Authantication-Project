package com.RockAndRoleProject.RBASpringSecurityProject.serviceimpl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.RockAndRoleProject.RBASpringSecurityProject.pojo.Product;
import com.RockAndRoleProject.RBASpringSecurityProject.repository.ProductRepository;
import com.RockAndRoleProject.RBASpringSecurityProject.service.ProductService;

//@Service class as a Spring service for automatic detection and registration.
@Service
public class ProductServiceImpl implements ProductService {

	// Injects an instance of ProductRepository for database operations
	@Autowired
	ProductRepository productRepository;

	// insert product method
	@Override
	public Product addItemSave(Product product) {
		// TODO Auto-generated method stub
		return productRepository.save(product);
	}

	// delete product by id
	@Override
	public String deleteItemById(long productId) {
		// TODO Auto-generated method stub
		Product product = productRepository.findById(productId).get();
		productRepository.delete(product);
		return product.getName() + " deleted successfully.";
	}

	// update product by id
	@Override
	public Product getUpadteItemById(long productId) {
		// TODO Auto-generated method stub
		return productRepository.findById(productId).get();
	}
	
	// list and pagination also
	@Override
	public Page<Product> getAllItems(Pageable pageable, String sortBy) {
	    // Modify the Pageable object to include sorting based on the sortBy parameter
	    Pageable sortedPageable = PageRequest.of(
	        pageable.getPageNumber(), 
	        pageable.getPageSize(), 
	        Sort.by(sortBy).ascending() // You can change to descending() if needed
	    );

	    // Fetch the paginated and sorted list of products from the repository
	    return productRepository.findAll(sortedPageable);
	}


}
