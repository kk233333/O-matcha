package com.omatcha.pojo;
/***
 * 购物车商品实体类
 * @author qingxiping
 *
 */
public class CartGoods {
	private int cgid;
	private String name;
	private int quantity;
	private int weight;
	private double price;
	private int cid;
	public int getCgid() {
		return cgid;
	}
	public void setCgid(int cgid) {
		this.cgid = cgid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	
}
