package com.niit.chinesfront.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.chinesbackend.dao.CategoryDao;
import com.niit.chinesbackend.dao.ProductDao;
import com.niit.chinesbackend.model.Category;
import com.niit.chinesbackend.model.Product;




@Controller
public class ProductController {
	

   @Autowired
   ProductDao productdao;
   @Autowired
   CategoryDao  categoryDao;
   @RequestMapping(value="/addproduct",method=RequestMethod.POST)
   public String productAdd(@ModelAttribute("pat")Product product,HttpSession httpSession)
   {
	   if(product.getProductId()==0)
		   
	   {
		  if( productdao.addProduct(product))
		    	{
		       MultipartFile file=product.getImage();
					
					ServletContext con=httpSession.getServletContext();
					String filelocation=con.getRealPath("/resources/images/");
					System.out.println(filelocation);
					String filename=filelocation+"\\"+product.getProductId()+".jpg";
					System.out.println(filename);
					
					try{
						byte b[]=file.getBytes();
						FileOutputStream fos=new FileOutputStream(filename);
						fos.write(b);
						fos.close();
				    	}
					catch(IOException ex){}
					catch(Exception e){}
						}	

	   }
	   else {
		   productdao.addProduct(product);
	   }
	  return "redirect:/Product";
   }
   
   @RequestMapping("/deleteProduct/{id}")
   public String productDelete(@PathVariable("id")int productId)
   {
	   productdao.deleteProduct(productId);
	   return "redirect:/Product";
   }
   @RequestMapping("/editProduct/{id}")
   public String productUpdate(@PathVariable("id")int productId,Model model)
   {
	  
	   List<Product>allProduct=productdao.getAllProduct();
	   Product productData=productdao.getProductById(productId); 
	   model.addAttribute("pat", productData);
	   model.addAttribute("productList",allProduct);
	  
	   return "Product";
	   
	   
   
   
   }
	  @RequestMapping("/Product")
public String productPage(Model model)
{		
		  List<Category>allCategory= categoryDao.getAllCategory();
		  List<Product>allProduct=productdao.getAllProduct();
  model.addAttribute("pat",new Product());
  model.addAttribute("productList",allProduct);
  model.addAttribute("categoryList",allCategory);
 
  return "Product";
  
}
	  }
