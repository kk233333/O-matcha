package com.omatcha.dao.impl;

import java.util.List;

import com.omatcha.dao.AddOrder;
import com.omatcha.util.DButil;

public class AddOrderimpl implements AddOrder {

	@Override
	public int AddOrder(int uid,String xiadantime,String dingdannumber,String address,String money,String Paymentmethod,String Consignee,List Commodityinformation) {
		String sql="insert into myorder VALUES(NULL,?,?,?,?,?,?,?,?);";
		return  DButil.update(sql, uid,xiadantime,dingdannumber,address,money,Paymentmethod,Consignee,Commodityinformation);
		
	
	}

}
