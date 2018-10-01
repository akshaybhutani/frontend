package com.niit.chinesbackend.dao;

import java.util.List;

import com.niit.chinesbackend.model.Category;

public interface CategoryDao {
	
	public boolean addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(int categoryId);
	public List<Category> getAllCategory();
	public Category getCategoryById(int categoryId);
	
}