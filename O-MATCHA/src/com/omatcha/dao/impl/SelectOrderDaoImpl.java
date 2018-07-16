package com.omatcha.dao.impl;

import java.util.List;

import com.omatcha.dao.SelectOrderDao;
import com.omatcha.pojo.Order;
import com.omatcha.pojo.Users;
import com.omatcha.pojo.Worder;
import com.omatcha.util.DButil;

public class SelectOrderDaoImpl implements SelectOrderDao{

	@Override
	public List<Object> selectOrder(Integer uid) {
		String sql = "select * from myorder where uid=?";
		//int [] str ={user.getUid()} ;
		return  DButil.query(sql,Worder.class, uid);
		
	}

}
