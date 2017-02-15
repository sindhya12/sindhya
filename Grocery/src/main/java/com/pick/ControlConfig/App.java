package com.pick.ControlConfig;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.pick.Dao.ProductDao;
import com.pick.Dao.UserDao;
import com.pick.model.prodo;
import com.pick.model.UserModel;
import com.pick.service.serviceImpl;

public class App 
{
	@Autowired
	
	 static serviceImpl ob;



	public static serviceImpl getOb() {
		return ob;
	}



	public static void setOb(serviceImpl ob) {
		App.ob = ob;
	}



	public static void main(String[] args)
	{
        @SuppressWarnings("resource")
        AnnotationConfigApplicationContext	appobj = new AnnotationConfigApplicationContext();
        
		//System.out.println("APP");
		
		appobj.scan("com.pick.grocery");
		appobj.refresh();
		
	UserDao ud=(UserDao) appobj.getBean("udao");
		ProductDao pd = (ProductDao) appobj.getBean("pdao");		
		
      UserModel add = new UserModel();
       prodo add1 = new prodo();
        
       
    
	}
}
 