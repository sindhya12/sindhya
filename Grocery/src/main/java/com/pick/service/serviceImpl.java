package com.pick.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pick.Dao.UserDao;
import com.pick.model.UserModel;

	@Service
	public class serviceImpl implements ServiceInterface 
	{
	    @Autowired
	    
	    private UserDao ud1;
	    public void setUd1(UserDao ud1)
	    {
			this.ud1 = ud1;
		}
	    public void save(UserModel user)
	    {
			ud1.save(user);
		}
	    public void Update(UserModel user)
	    {
			// TODO Auto-generated method stub
			ud1.Update(user);
		}
	    public void delete(UserModel user)
	    {
			// TODO Auto-generated method stub
			ud1.delete(user);
		}
	    public List<UserModel> list() 
	    {
			// TODO Auto-generated method stub
			return null;
		}
}

































































































