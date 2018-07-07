package com.omatcha.dao;

import java.util.List;

import com.omatcha.pojo.Users;

public interface UserDao {
	//注册的Dao
	public int signUpDao(Users user);	
	//查询所偶user对象的姓名
	public List<Object> selectUserName();
	//登录的Dao
	public List<Object> loginDao(String username, String password);	
}
