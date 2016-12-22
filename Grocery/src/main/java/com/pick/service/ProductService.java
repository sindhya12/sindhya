package com.pick.service;

import java.util.List;

import com.pick.model.prodo;

public interface ProductService 
{
	public void insert(prodo product);
	public void update(prodo product);
	public void delete(prodo product);
	public List<prodo> list1();

}
