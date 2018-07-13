package com.omatcha.util;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omatcha.pojo.Shopping;

public class AddShoppingCart {

	public static void addshoppingcart(HttpServletRequest req, HttpServletResponse resp){
		List<Shopping> list=(List<Shopping>) req.getSession().getAttribute("Orderlist");
		String id=String.valueOf(req.getSession().getAttribute("uid"));
		String sql ="insert into cartgoods VALUES(NULL,?,?,?,?,?,?);";
		if(!id.equals("null")){
		int uid =(int) req.getSession().getAttribute("uid");
		for (int i = 0; i < list.size(); i++) {
			String name=list.get(i).getSpname();
			String quantity=list.get(i).getSpnumber();
			int wiegth= getnumber(list.get(i).getGuige());
			String price=list.get(i).getOnemoney();
			String images=list.get(i).getSrc();
			String image=images.substring(images.lastIndexOf("/")+1);
		DButil.update(sql, name,quantity,wiegth,price,image,uid);	
		}
		}
	}
	
	
	public static int getnumber(String str){
		str=str.trim();
		String str2="";
		if(str != null && !"".equals(str)){
		for(int i=0;i<str.length();i++){
		if(str.charAt(i)>=48 && str.charAt(i)<=57){
		str2+=str.charAt(i);}}}
		return Integer.valueOf(str2);
			}
}
