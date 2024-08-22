package com.RockAndRoleProject.RBASpringSecurityProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.RockAndRoleProject.RBASpringSecurityProject.pojo.Product;

// @Repository interface as a Spring-managed data access component.
@Repository
// ProductRepository Interface for interacting with Product entities
public interface ProductRepository extends JpaRepository<Product, Long> {

}
