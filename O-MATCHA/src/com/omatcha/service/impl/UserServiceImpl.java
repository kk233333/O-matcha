package com.omatcha.service.impl;

import java.util.List;

import com.omatcha.dao.UserDao;
import com.omatcha.dao.impl.UserDaoImpl;
import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
/**
 * 
 * @author wangwei
 *	用户逻辑层实例
 */
public class UserServiceImpl implements UserService{
	UserDao userDao = new UserDaoImpl();
	public boolean signUpService(Users user) {
		int i=userDao.signUpDao(user);
		if (i>0) {
			return true;
		}
		return false;
	}
	public List<Object> selectUserName() {
		return userDao.selectUserName();
	}
	public Object userLoginService(String username, String password) {
		return userDao.loginDao(username, password);
	}
	@Override
	public boolean Userslist(Users user) {
		int i=userDao.InsertUserList(user);
		if (i>0) {
			return true;
		}
		return false;
	}

}
