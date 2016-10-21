
package org.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.niit.dao.CategoryDAO;
import org.niit.dao.ProductDAO;
import org.niit.dao.SupplierDAO;
import org.niit.model.Category;
import org.niit.model.Product;
import org.niit.model.Supplier;

import org.niit.util.Util;

@Controller
public class ProductController {

	@Autowired(required=true)
	private ProductDAO productDAO;
	
	@Autowired(required=true)
	private CategoryDAO categoryDAO;
	
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	
	
	@RequestMapping(value="/products",method=RequestMethod.GET)
	public String listProducts(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("category",new Category());
		model.addAttribute("productList",this.productDAO.list());
		model.addAttribute("categoryList",this.categoryDAO.list());
		model.addAttribute("supplierList",this.supplierDAO.list());
		return "AdminProduct";
	}
	
	@RequestMapping(value="/addproduct", method=RequestMethod.POST)
public String addProduct(@ModelAttribute("product")Product product,Model model)
{
		String newID=	Util.removeComma(product.getId());
		product.setId(newID);
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category);
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier);
		
		
		
		MultipartFile image= product.getImage();
		Path path= Paths.get("/images/"+product.getName()+".jpg");

        System.out.println(path.toString());
        if(image!=null && !image.isEmpty()){

            try {
            	System.out.println("inside try image");
                image.transferTo(new File(path.toString()));
            } catch (IOException e) {
                e.printStackTrace();
                throw new RuntimeException("Product Image Saving Failed ",e);

            }
        }
		
		
	/*	FileUtil.upload(path, image, product.getId()+".jpg");*/
        product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		productDAO.saveOrUpdate(product);
		
		
		
		model.addAttribute("productList",this.productDAO.list());
		
		
		
		return "AdminProduct";
}
	
@RequestMapping("removeproduct/{id}")
public String removeProduct(@PathVariable("id")String id ,Model model) 
{
	{
		System.out.println("delete");
		productDAO.delete(id);
		return "redirect:/products";
	}


}
@RequestMapping("editproduct/{id}")
public String editProduct(@PathVariable("id") String id, Model model) {
	System.out.println("editProduct");
	model.addAttribute("product", this.productDAO.get(id));
	model.addAttribute("listProducts", this.productDAO.list());
	model.addAttribute("categoryList",this.categoryDAO.list());
	model.addAttribute("supplierList",this.supplierDAO.list());
	

	return "AdminProduct";
}

@RequestMapping("getproduct/${product.id}")
public String getProduct(@PathVariable("id")String id,Model model)
{
	System.out.println("get product");
	model.addAttribute("product",this.productDAO.get(id));
	model.addAttribute("listProducts", this.productDAO.list());
	model.addAttribute("categoryList",this.categoryDAO.list());
	model.addAttribute("supplierList",this.supplierDAO.list());
	
	return "ProductView";
	
}
}


