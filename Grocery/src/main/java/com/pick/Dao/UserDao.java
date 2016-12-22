package com.pick.Dao;



import java.util.List;

import com.pick.model.UserModel;



public interface UserDao
{
	public  List<UserModel> getUser(String username,String password) ;
   public void save(UserModel user);
    public void Update(UserModel user);
    public void delete(UserModel user);
}
