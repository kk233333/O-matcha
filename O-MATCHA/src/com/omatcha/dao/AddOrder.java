package com.omatcha.dao;

import java.util.List;

public interface AddOrder {

	public int AddOrder(int uid,String xiadantime,String dingdannumber,String address,String money,String Paymentmethod,String Consignee,List Commodityinformation);
}
