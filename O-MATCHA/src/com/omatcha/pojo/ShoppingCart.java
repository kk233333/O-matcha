package com.omatcha.pojo;

import java.io.Serializable;

public class ShoppingCart implements Serializable{
	private String spname;
	private String guige;
	private String spnumber;
	private String src;
	private String onemoney;
	private String countmoney;
	private String type;
	private String zhufu;
	private String cgid;
	public ShoppingCart(){
		
	}
	public String getSpname() {
		return spname;
	}
	public void setSpname(String spname) {
		this.spname = spname;
	}
	public String getGuige() {
		return guige;
	}
	public void setGuige(String guige) {
		this.guige = guige;
	}
	public String getSpnumber() {
		return spnumber;
	}
	public void setSpnumber(String spnumber) {
		this.spnumber = spnumber;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
	public String getOnemoney() {
		return onemoney;
	}
	public void setOnemoney(String onemoney) {
		this.onemoney = onemoney;
	}
	public String getCountmoney() {
		return countmoney;
	}
	public void setCountmoney(String countmoney) {
		this.countmoney = countmoney;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getZhufu() {
		return zhufu;
	}
	public void setZhufu(String zhufu) {
		this.zhufu = zhufu;
	}
	public String getCgid() {
		return cgid;
	}
	public void setCgid(String cgid) {
		this.cgid = cgid;
	}
	@Override
	public String toString() {
		return "ShoppingCart [spname=" + spname + ", guige=" + guige
				+ ", spnumber=" + spnumber + ", src=" + src + ", onemoney="
				+ onemoney + ", countmoney=" + countmoney + ", type=" + type
				+ ", zhufu=" + zhufu + ", cgid=" + cgid + "]";
	}
	
	


	
}
