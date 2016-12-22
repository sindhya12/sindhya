package com.pick.Dao;

import java.util.List;


import com.pick.model.prodo;


public interface ProductDao
{
	public void insert(prodo product);
	public void update(prodo product);
	public void delete(int pid);
	public void edit(prodo pid);
	public prodo prodById(int pid);
	public  List<prodo> prodById(String category);
	public List<prodo> list1();

}
