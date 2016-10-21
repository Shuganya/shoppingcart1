package org.niit.controller;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.niit.dao.CategoryDAO;
import org.niit.dao.ProductDAO;
import org.niit.dao.UserdetailsDAO;
import org.niit.model.Category;
import org.niit.model.Product;
import org.niit.model.Userdetails;

@Controller
public class UserController {
	@Autowired(required=true)
	UserdetailsDAO userdetailsDAO;
	
	@Autowired
	Userdetails userdetails;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Product product;
	@Autowired
	CategoryDAO categoryDAO;
	
	
	@RequestMapping("/loginSuccess")
	public String showMessage(@RequestParam(value="username")String name,@RequestParam(value="password")String password, HttpSession session,Model model) {
String username = SecurityContextHolder.getContext().getAuthentication().getName();
		
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		
		 if (authority.getAuthority().equals(role)) 
	     {
			 model.addAttribute("category", new Category());
	 	model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("product", new Product());
		model.addAttribute("productList",this.productDAO.list());
	    	 
	    	 session.setAttribute("loggedInUser",userdetails.getUsername());
	    	 
	    	 session.setAttribute("userdetails", userdetails);
	    	session.setAttribute("username",username);
	    	 page="ProductView";
	    	 
	    	 
	    	 break;
	     }
	     else 
	     {
	    	 session.setAttribute("LoggedIn", "true");
	    	 session.setAttribute("Admin", "true");
	    	 page="AdminHome";
	    	 break;
	    }
		}
		 return page;
		}
	
	@RequestMapping("/isValidUser")
	public ModelAndView validuser(@RequestParam(value="username")String name,@RequestParam(value="password")String password, HttpSession session,Model model){
		
	
		String message;
		ModelAndView mv ;
		
		
		if (userdetailsDAO.isValidUser(name,password)) 
		{
			
			message = "Successfully Logged in";
			 mv = new ModelAndView("User");
		} else{
			message="Please enter a valid username and password";
			mv=new ModelAndView("RegisterSuccess");
		}
		
		model.addAttribute("product", new Product());
		model.addAttribute("productList",this.productDAO.list());
		mv.addObject("message", message);
		mv.addObject("username",name);
		return mv;
	
	}
	
	/*@RequestMapping("/Login")
	public ModelAndView login(@RequestParam(value = "userid")String id, @RequestParam(value= "password")String password,HttpSession session)
	{
		ModelAndView mv=new ModelAndView();
		 userdetails = userdetailsDAO.isValidUser(id, password);
		if(userdetails.getRole().equals("ROLE_USER"))
		{
			mv = new ModelAndView("User");	
			
		}
		else
		{
			if(userdetails.getRole().equals("ROLE_ADMIN"))
			{
				mv = new ModelAndView("adminHome");
			}
		}
		
		session.setAttribute("Welcome", userdetails.getName());
		return mv;
	}*/
@RequestMapping("/logout")
public ModelAndView logout(HttpServletRequest request,HttpSession session)
{
	ModelAndView mv= new ModelAndView("home");
	session.invalidate();
	session=request.getSession(true);
	mv.addObject("logoutMessage","You successfully logged out");
	mv.addObject("loggedOut", "true");
	return mv;
}
@RequestMapping("/productView")
public ModelAndView onLoadProductView(Model model)
{
	model.addAttribute("category", new Category());
	model.addAttribute("categoryList", this.categoryDAO.list());
	model.addAttribute("product", new Product());
	model.addAttribute("productList",this.productDAO.list());
	ModelAndView mv=new ModelAndView("ProductView");

	return mv;
}
	
}
