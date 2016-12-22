package com.pick.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.pick.model.UserModel;

@Repository("UserDao")
public  class DaoImpl implements UserDao {
    @Autowired
    private SessionFactory sessionFactory;
 
 
    public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
    public void save(UserModel user) {
        Session session = sessionFactory.openSession();
        user.setEnabled(true);
    	user.setRoleId("USER_ROLE");
    	session.save(user);
        session.flush();
        System.out.println("inserted");
        
    }
	
    @Transactional
     public void Update(UserModel user) 
    {
    	System.out.println("inside update");
    	Session session = sessionFactory.openSession();
    	System.out.println("inside update after object");
        session.update(user);
        System.out.println("inside update after function");
        session.flush();
        session.close();
        
    }
   /*
	@SuppressWarnings("unchecked")
	public List<UserModel> list() {
		Session session=sessionFactory.openSession();
		List<UserModel> lists=session.createQuery("from User").list();
		
		return lists;
	}*/
    @SuppressWarnings("unchecked")
    @Transactional
    public  List<UserModel> getUser(String email,String password){

    	
    	Session session = this.sessionFactory.getCurrentSession();
    	
    	Criteria criteria = session.createCriteria(UserModel.class);
    	
    	//Query criteria=session.createQuery("from UserForm u where u.username='"+username+"' and u.password='"+password+"'" );
    	
    	criteria.add(Restrictions.and(Restrictions.eq("email",email), Restrictions.eq("password",password)));

    		List<UserModel> list = criteria.list();
    		System.out.println(list);
    		
    	return  list;
    		
    }
	@Transactional
	public void delete(UserModel user) {
		 
		Session session = sessionFactory.openSession();
        session.delete(user);
        session.flush();
        
        
	}
}
