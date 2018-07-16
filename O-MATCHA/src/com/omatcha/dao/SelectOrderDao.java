package com.omatcha.dao;

import java.util.List;

import com.omatcha.pojo.Users;

public interface SelectOrderDao {
	public List<Object> selectOrder(Integer uid);
}
