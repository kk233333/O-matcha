package com.omatcha.pojo;

public class Tabeclass {
	private String spname;
	private String guige;
	private String spnumber;
	private String src;
	private String onemoney;
	
	public Tabeclass(){
		
	}
	
	public Tabeclass(String spname, String guige, String spnumber, String src,
			String onemoney) {
		this.spname = spname;
		this.guige = guige;
		this.spnumber = spnumber;
		this.src = src;
		this.onemoney = onemoney;
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

	@Override
	public String toString() {
		return "Tabeclass [spname=" + spname + ", guige=" + guige
				+ ", spnumber=" + spnumber + ", src=" + src + ", onemoney="
				+ onemoney + "]";
	}
	
}
