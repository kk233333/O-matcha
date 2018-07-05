package com.omatcha.service;

import java.util.List;

import com.omatcha.pojo.Users;
/**
 * 
 * @author wagnwei
 *	用户逻辑层
 */
public interface UserService {
	public boolean signUpService(Users user);
	public List<Object> selectUserName();
}
