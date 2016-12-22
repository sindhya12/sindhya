package com.pick.Dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.pick.model.prodo;
@Repository("ProductDao")
public  class ProductDaoImpl implements ProductDao 
{
	@Autowired
	private SessionFactory sessionFactory;
		public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	/*
	@Transactional
	public void delete(prodo product) 
	{
		// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
	        session.delete(product);
	        session.flush();
	        session.close();
	}
	*//*@Transactional
	public List<prodo> list1() 
	{
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<prodo> lists1=session.createQuery("from prodo").list();
		
		return lists1;

		
	}
*/
	
	@Transactional
	public void delete(int pid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		prodo product=(prodo)session.get(prodo.class,pid);
		session.delete(product);
		session.flush();
		
	}
	@Transactional
	public void update(prodo product) 
	{
		// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
	        session.update(product);
	        session.flush();
	        session.close();
	}
	@Transactional
	public void insert(prodo product) 
	{
		// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
	        session.save(product);
	        session.flush();
	        session.close();
	}
	@Transactional
	public void edit(prodo pid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.update(pid);
		session.flush();
		session.close();
	}
	
	@Transactional
	public List<prodo> list1() 
	{
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<prodo> lists1=session.createQuery("from prodo").list();
		System.out.println(lists1);
		return lists1;

		
	}
	@Transactional
	public List<prodo> prodById(String category) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Criteria criteria = session.createCriteria(prodo.class);
		criteria.add(Restrictions.eq("category", category));
		
		List<prodo> list1 = criteria.list();
		return list1;
		
	}
	public prodo prodById(int pid) {
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unused")
		prodo product=(prodo)session.get(prodo.class,pid);
		session.close();
		return product;
		
	}
	
}
