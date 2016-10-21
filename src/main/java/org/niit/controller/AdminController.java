package org.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import org.niit.dao.CategoryDAO;
import org.niit.dao.ProductDAO;
import org.niit.dao.SupplierDAO;
import org.niit.dao.UserdetailsDAO;
import org.niit.model.Category;
import org.niit.model.Product;
import org.niit.model.Supplier;
import org.niit.model.Userdetails;


@Controller
public class AdminController {
	@Autowired
	private Product product;
	
	 @Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private Supplier supplier;
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private UserdetailsDAO userdetailsDAO;
	
	@Autowired
	private Userdetails userdetails;
	
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
	
	@RequestMapping("/AdminHome")
	public ModelAndView AdminHome()
	{
		ModelAndView mv = new ModelAndView("AdminHome");
		mv.addObject("isAdminClickedHome", "true");
		return mv;
	}
	
	@RequestMapping("/manageCategories")
	public ModelAndView categories()
	{
		ModelAndView mv = new ModelAndView("AdminCategory");
		mv.addObject("category", category);
		mv.addObject("isAdminClickedCategories","true");
		mv.addObject("categoryList", categoryDAO.list());
		return mv;
	}
	
	@RequestMapping("/manageSuppliers")
	public ModelAndView suppliers()
	{
		ModelAndView mv = new ModelAndView("AdminSupplier");
		mv.addObject("supplier", supplier);
		mv.addObject("isAdminClickedSuppliers","true");
		mv.addObject("supplierList", supplierDAO.list());
		return mv;
	}
	
	@RequestMapping("/manageProducts")
	public ModelAndView products()
	{
		ModelAndView mv = new ModelAndView("/AdminProduct");
		mv.addObject("supplier", new Supplier());
		mv.addObject("category",new Category());
		mv.addObject("categoryList",this.categoryDAO.list());
		mv.addObject("supplierList",this.supplierDAO.list());
	
		mv.addObject("product", product);
		mv.addObject("isAdminClickedProducts","true");
		mv.addObject("productList", productDAO.list());
		return mv;
	}
	@RequestMapping("/viewCustomers")
	public ModelAndView customers()
	{
		ModelAndView mv = new ModelAndView("customerdetails");
		mv.addObject("userdetails", userdetails);
	
		mv.addObject("ListUserdetails", userdetailsDAO.listUserdetails());
		return mv;
	}
	
	 

}
