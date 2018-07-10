package com.omatcha.dao.impl;

import java.util.List;

import com.omatcha.dao.UserDao;
import com.omatcha.pojo.Users;
import com.omatcha.util.DButil;

/**
 * 
 * @author wangwei
 *
 * 用户 业务层实例
 */
public class UserDaoImpl implements UserDao{

	// 用户注册方法（Dao层实例）
	public int signUpDao(Users user) {
		String sql = "insert into user(uname,uphone,email,passwords) values(?,?,?,?)";
		String str [] ={user.getUname(),user.getUphone(),user.getEmail(),user.getPasswords()};
		return DButil.update(sql, str);
	}

	public List<Object> selectUserName() {
		String sql = "select uname from user";
		return DButil.query(sql,Users.class, null);
	}

	public Object loginDao(String username, String password) {
		String sql = "select * from user where uname=? and passwords= ?";
		String str [] ={username,password};
		return DButil.selectSingleObject(sql, Users.class, str);
	}

	@Override
	public int InsertUserList(Users user) {
		String sql = "insert into user(Nickname,usex,birthday,uprovince,ucity,ucountry,uadress) values(?,?,?,?,?,?,?)";
		String str [] ={user.getNickname(),user.getUsex(),user.getBirthday(),user.getUprovince(),user.getUcity(),user.getUcountry(),user.getUadress()};
		return DButil.update(sql, str);
	}

}
