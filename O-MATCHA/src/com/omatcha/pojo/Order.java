package com.omatcha.pojo;

import java.util.List;

public class Order {
	 private String xiadantime;
	 private String dingdannumber;
	 private String address;
	 private String money;
	 private String Paymentmethod;
	 private String Consignee;
	 private List Commodityinformation;
	public String getXiadantime() {
		return xiadantime;
	}
	public void setXiadantime(String xiadantime) {
		this.xiadantime = xiadantime;
	}
	public String getDingdannumber() {
		return dingdannumber;
	}
	public void setDingdannumber(String dingdannumber) {
		this.dingdannumber = dingdannumber;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getPaymentmethod() {
		return Paymentmethod;
	}
	public void setPaymentmethod(String paymentmethod) {
		Paymentmethod = paymentmethod;
	}
	public String getConsignee() {
		return Consignee;
	}
	public void setConsignee(String consignee) {
		Consignee = consignee;
	}
	public List getCommodityinformation() {
		return Commodityinformation;
	}
	public void setCommodityinformation(List commodityinformation) {
		Commodityinformation = commodityinformation;
	}
	@Override
	public String toString() {
		return "Order [xiadantime=" + xiadantime + ", dingdannumber="
				+ dingdannumber + ", address=" + address + ", money=" + money
				+ ", Paymentmethod=" + Paymentmethod + ", Consignee="
				+ Consignee + ", Commodityinformation=" + Commodityinformation
				+ "]";
	}
	 
}
