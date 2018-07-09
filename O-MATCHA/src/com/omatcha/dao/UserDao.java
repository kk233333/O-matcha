package com.omatcha.dao;

import java.util.List;

import com.omatcha.pojo.Users;

public interface UserDao {
	//注册的Dao
	public int signUpDao(Users user);	
	//查询所偶user对象的姓名
	public List<Object> selectUserName();
	//登录的Dao
	public Object loginDao(String username, String password);
	//用户信息的Dao
	public int InsertUserList(Users user);
}
