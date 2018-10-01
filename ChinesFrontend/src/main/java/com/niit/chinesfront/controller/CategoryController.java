package com.niit.chinesfront.controller;



	import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.chinesbackend.model.Category;
import com.niit.chinesbackend.dao.CategoryDao;


	@Controller
	public class CategoryController {
		
		@Autowired
		Category category;

		@Autowired
		CategoryDao categoryDao;

		
		@RequestMapping(value="/addCategory",method=RequestMethod.POST)
		public String categoryAdd(@ModelAttribute("cat")Category category)
		
		{
			if(category.getCategoryId()==0)
			{
				categoryDao.addCategory(category);
			}
			else
			{
				categoryDao.updateCategory(category);
			}
				return "redirect:/Category";
		}

		@RequestMapping("/deleteCategory/{id}")
		public String categoryDelete(@PathVariable("id") int categoryId) 
		{
			categoryDao.deleteCategory(categoryId);
			return "redirect:/Category";
		}
		
		
	
	
	@RequestMapping("/editCategory/{id}")
	
	public String categoryUpdate(@PathVariable("id") int categoryId,Model model)
	{
		Category categoryData=categoryDao.getCategoryById(categoryId);
		model.addAttribute("cat",categoryData);
		List<Category> allCategories= categoryDao.getAllCategory();
		model.addAttribute("categoryList",allCategories);
		return "Category";
}
	
	
	
	
	
	
}
