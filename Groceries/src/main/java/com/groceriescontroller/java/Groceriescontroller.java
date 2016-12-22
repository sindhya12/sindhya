package com.groceriescontroller.java;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.pick.Dao.UserDao;

import com.pick.model.prodo;
import com.pick.model.UserModel;
 @Controller
public class Groceriescontroller 
{
	 HttpSession session;
	 private UserDao ud;
	 
	 public UserDao getUd() {
		return ud;
	}



	public void setUd(UserDao ud) {
		this.ud = ud;
	}
	


	public  Groceriescontroller()
	 {
		 @SuppressWarnings("resource")
	        AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
	        appobj.scan("com.pick.grocery");
			appobj.refresh();
			ud=(UserDao) appobj.getBean("udao");
			
	 }
	 
	 

	
	 
	 @RequestMapping("/")
	 public ModelAndView printHello()
	 {
		 
		 return new ModelAndView("index5");
	 }
	 @RequestMapping("/home")
	 public ModelAndView printHe()
	 {
		 
		 return new ModelAndView("index5");
	 }
	@RequestMapping("/login")
	public String log(){
		return "login";
	}
	@RequestMapping("/admin1")
	 public ModelAndView printaew()
	 {
		 
		 return new ModelAndView("admin");
	 }

	 @RequestMapping("/SignUP")
	 public ModelAndView printsignup(Model model)
	 {
		 UserModel user = new UserModel();
		 model.addAttribute("user",user);
		 return new ModelAndView("SignUP");
	 }

	
	 @RequestMapping("/aboutus")
	 public ModelAndView printaboutus()
	 {
		 return new ModelAndView("aboutus");
	 }
	

	 @ModelAttribute("user")
	 public UserModel usd()
	 {
		 return new UserModel();
	 }
	 @ModelAttribute("prodoobj")
	 public prodo pdt ()
	 {
		 return new prodo();
	 }
	 @RequestMapping(value = "/SignUP1",method = RequestMethod.POST)
	 public String printNam1( @ModelAttribute(value="user")UserModel user,ModelMap model, BindingResult result)
	 
	 {
		 ud.save(user);
		 return "login";
	 }
	 
	
	
	   @RequestMapping( value = "/Signin")
	   public String addStudent(HttpServletRequest req,ModelMap map) {
        session = req.getSession(true);
		String view="";
		List<UserModel> list = ud.getUser(req.getParameter("mail"),req.getParameter("pswd"));
		
		if(!list.isEmpty()){
				for(UserModel role : list){
		if(role.getRoleId().equals("ADMIN_ROLE"))
		{
			
			session.setAttribute("name", role.getEmail());
			view= "admin";
		}
		
		else if(role.getRoleId().equals("USER_ROLE")) 
		{

			session.setAttribute("name", role.getEmail());
			session.setAttribute("user", role.getFirstName());
			System.out.println(role.getFirstName());
			return view = "index5";
		}
		
		else {
			String errormsg="sorry un expected error has occured";
				       map.put("errMsg",errormsg);
			return view = "errormsg";
		}
		}
	
		}
		else{

			
			return view="login";
			
		}
		
		 
	return view;
	 }

	   @RequestMapping("/logout")
	    public String logout()
		{
	       session.invalidate();
	       return "index5";
	    }
	 

}
	
 /* 
 @RequestMapping("/Signin")
 public ModelAndView getUser(HttpServletRequest req) 
 {
		String s= req.getParameter("email");
		String p=req.getParameter("password");
		List<UserModel> list=ud.getUser(s,p);
		System.out.println(s);
		System.out.println(p);
		System.out.println(list);
		ModelAndView view=new ModelAndView();
		if(!list.isEmpty())
		{
			for(int i=0;i<list.size();i++)
			{
				if(list.get(i).getRoleId().equals("ADMIN_ROLE"))
				{
					view.setViewName("productform");
					System.out.println("valid");
				}
				else
				{
					view.setViewName("index5");				
				}
			}
		}
		else
		{
			view.setViewName("login");
			System.out.println("invalid");
	    }
			return view;
			
			
			
		
	    }*/
	 
 /*@RequestMapping(value = "/SignUP",method = RequestMethod.GET)
public String printNam(Model model)
{
 UserModel user = new UserModel();
 model.addAttribute("user",user);
 return "SignUP";
}*/