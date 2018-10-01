package com.niit.chinesfront.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.chinesbackend.model.Category;
import com.niit.chinesbackend.model.Product;
import com.niit.chinesbackend.model.User;
import com.niit.chinesbackend.dao.CategoryDao;
import com.niit.chinesbackend.dao.ProductDao;


import org.springframework.ui.Model;


@Controller
public class HomeController {
	@Autowired
    private Category category;
	@Autowired
	private Product product;
	
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping("/")
	public String homePage()	{		
		return "index";		
	}
	@RequestMapping("/Home")
	public String homePage1(){		
		return "index";		
	}

	@RequestMapping("/login")
	public String LoginPage()
	{
		
		return "Login";
	}
	@RequestMapping("/Signup")
	public String Signup(Model model)
	{
		model.addAttribute("user",new User());
		return "Signup";	
		
	}
	@RequestMapping("/Category")
	public String categoryPage(Model model)
	{
		List<Category>allCategories=categoryDao.getAllCategory();
		model.addAttribute("cat",category);
		model.addAttribute("categoryList",allCategories);
		return "Category";
	
	}

}
