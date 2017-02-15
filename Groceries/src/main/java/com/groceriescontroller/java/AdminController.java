package com.groceriescontroller.java;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pick.Dao.ProductDao;

import com.pick.model.prodo;


@Controller
public class AdminController 
{
	private ProductDao pd;



	public ProductDao getPd() {
		return pd;
	}



	public void setPd(ProductDao pd) {
		this.pd = pd;
	}
	public AdminController()
	{
		@SuppressWarnings("resource")
        AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
        appobj.scan("com.pick.grocery");
		appobj.refresh();
		pd=(ProductDao) appobj.getBean("pdao");
	}
	

	 @RequestMapping("/home1")
	 public ModelAndView printHe()
	 {
		 
		 return new ModelAndView("index5");
	 }
	
	@RequestMapping(value = "/addproduct",method = RequestMethod.GET)
	 public String prod1(Model model)
	 {
		 prodo product = new prodo();
		 model.addAttribute("prodoobj",product);
		 return "addprodo";
	 }
	 @RequestMapping(value = "/addprodo",method = RequestMethod.POST)
	 public String prod2(@ModelAttribute(value="prodoobj")prodo product, MultipartFile files,HttpServletRequest req,ModelMap model) throws IOException
	 {
		 pd.insert(product); 
		/* System.out.println(req.getParameter("pname"));
		 System.out.println(product.getCategory());
		 pd.insert(product); ,HttpServletRequest req*/
		 /*prodo p = new prodo();
		 p.setBname(req.getParameter("pname"));*/
		 MultipartFile files1 = product.getFiles();
		 System.out.println(files1.getOriginalFilename());
		
		 String path = "C:/Users/sindhya/git/sindhya/Groceries/src/main/webapp/resources/image" +product.getPid()+".jpg";
		 byte[] bytes = files1.getBytes();
		 System.out.println();
		  BufferedOutputStream image = new BufferedOutputStream(new FileOutputStream(new File(path)));
		 System.out.println(image);
		 image.write(bytes);
		 image.close();
		 System.out.println(image);
		 return "redirect:/listproducts";
	 }
	 @RequestMapping("/listproducts")
	 public ModelAndView printList()
	 {
		 List<prodo> prod=pd.list1();
		 return new ModelAndView("listpage","lobj",prod);
	 }
	 @RequestMapping("/listPost/{pid}")
	 public ModelAndView pos(@PathVariable(value="pid")int pid)
	 {
		prodo pr=pd.prodById(pid); 
		return new ModelAndView("productpage","showobj",pr);
	 }
	 @RequestMapping("/admin/product/delete/{pid}")
	 public String deleteprodbyId(@PathVariable(value="pid")int pid)
	 {
		 pd.delete(pid);
		return "redirect:/listproducts";
	 }
	 @RequestMapping("/admin/product/edit/{pid}")
	 public ModelAndView editProductForm(@PathVariable(value="pid")int pid)
	 {
		 System.out.println(pid);
		 prodo prod3 = pd.prodById(pid);
		 return new ModelAndView("editProductForm","editproductobj",prod3);
	 }
	 @RequestMapping(value="/admin/product/editproducts/" ,method = RequestMethod.POST)
	 public String edit(@ModelAttribute(value="editproductobj")prodo pid)
	 {
		 pd.update(pid);
		 return "redirect:/listproducts";
	 }
	 @ModelAttribute("editproductobj")
	 public prodo create()
	 {
		 return new prodo();
	 }
	 
	 @RequestMapping("/category")

	 public ModelAndView printListcust(HttpServletRequest request)
	 {
		 
		 List<prodo> ptdt=pd.prodById(request.getParameter("cat"));
		 ModelAndView pro=new ModelAndView("category");
		 pro.addObject("pro", ptdt);
		 return pro;
	 }
}
