package org.sunxin.strust2.ch03.action;

import org.sunxin.strust2.ch03.entity.User;

import user_sql.*;
import dao.*;

import com.opensymphony.xwork2.Action;


public class LoginAction implements Action {
	private User user;
	@Override
	
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		UserDao userDao = new UserDao();
		if(userDao.getLogInfo(user.getUsername())!= null && user.getPassword().equals(userDao.getLogInfo(user.getUsername())))
			return SUCCESS;
		else
			return ERROR;
	}
	
	public String add()
	{
		return "add";
	}
	
	public User getUser()
	{
		return user;
	}
	
	public void setUser(User user)
	{
		this.user=user;
	}
}
