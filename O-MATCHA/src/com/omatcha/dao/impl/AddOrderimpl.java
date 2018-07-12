package com.omatcha.dao.impl;

import java.util.List;

import com.omatcha.dao.AddOrderDao;
import com.omatcha.util.DButil;

public class AddOrderimpl implements AddOrderDao {

	@Override
	public int AddOrder(int uid,String xiadantime,String dingdannumber,String address,String money,String Paymentmethod,String Consignee,int Commodityinformation) {
		String sql="insert into myorder VALUES(NULL,?,?,?,?,?,?,?,?);";
		return  DButil.update(sql, uid,xiadantime,dingdannumber,address,money,Paymentmethod,Consignee,Commodityinformation);
		
	
	}

	@Override
	public int AddOrdersp(String spname, String guige, String spnumber,
			String spmoney, int uid) {
			String sql="insert into ordersp VALUES(NULL,?,?,?,?,?);";
			return  DButil.update(sql,spname,guige,spnumber,spmoney,uid);
	}

}
