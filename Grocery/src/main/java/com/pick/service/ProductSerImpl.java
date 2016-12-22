package com.pick.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.pick.Dao.ProductDao;
import com.pick.model.prodo;
@Service
public class ProductSerImpl implements ProductService
{
	private ProductDao pd1;
	

	public ProductDao getPd1() {
		return pd1;
	}

	public void setPd1(ProductDao pd1) {
		this.pd1 = pd1;
	}

	
	public void delete(int product) {
		// TODO Auto-generated method stub
		pd1.delete(product);
	}

	public List<prodo> list1() {
		// TODO Auto-generated method stub
		return null;
	}

	public void delete(prodo product) {
		// TODO Auto-generated method stub
		
	}

	public void insert(prodo product) {
		// TODO Auto-generated method stub
		
	}

	public void update(prodo product) {
		// TODO Auto-generated method stub
		
	}
	
}
