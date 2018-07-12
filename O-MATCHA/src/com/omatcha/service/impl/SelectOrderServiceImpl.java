package com.omatcha.service.impl;

import java.util.List;

import com.omatcha.dao.SelectOrderDao;
import com.omatcha.dao.impl.SelectOrderDaoImpl;
import com.omatcha.pojo.Users;
import com.omatcha.service.SelectOrderService;
	
public class SelectOrderServiceImpl implements SelectOrderService{
	SelectOrderDao so = new SelectOrderDaoImpl();
	@Override
	public List<Object> selectOrder(Users user) {
		return so.selectOrder(user);
	}

}
