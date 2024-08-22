package com.RockAndRoleProject.RBASpringSecurityProject.pojo;


import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "product_table")
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long productId;
	
	private String name;
	
	private String description;
	
	private double price;

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Product(long productId, String name, String description, double price) {
		super();
		this.productId = productId;
		this.name = name;
		this.description = description;
		this.price = price;
	}

	

	public long getProductId() {
		return productId;
	}

	public void setProductId(long productId) {
		this.productId = productId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", description=" + description + ", price="
				+ price + "]";
	}
	
	
	
}

