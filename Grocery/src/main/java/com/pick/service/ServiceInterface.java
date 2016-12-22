package com.pick.service;


import java.util.List;

import com.pick.model.UserModel;

public interface ServiceInterface 
{
	public List <UserModel> list();
	public void Update(UserModel user);
	public void save(UserModel user);
    public void delete(UserModel user);
}
