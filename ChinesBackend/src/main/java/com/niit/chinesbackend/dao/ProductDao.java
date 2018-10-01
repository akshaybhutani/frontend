package com.niit.chinesbackend.dao;

import java.util.List;

import com.niit.chinesbackend.model.Product;

public interface ProductDao {

	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(int productId);
	public List<Product> getAllProduct();
	public Product getProductById(int productId);
	
}
