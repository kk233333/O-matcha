package com.omatcha.util;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omatcha.pojo.Shopping;

public class AddShoppingCart {

	public static void addshoppingcart(HttpServletRequest req, HttpServletResponse resp){
		List<Shopping> list=(List<Shopping>) req.getSession().getAttribute("Orderlist");
		int uid =(int) req.getSession().getAttribute("uid");
		String sql ="insert into cartgoods VALUES(NULL,?,?,?,?,?,?);";
		for (int i = 0; i < list.size(); i++) {
			String name=list.get(i).getSpname();
			String quantity=list.get(i).getSpnumber();
			String wiegth=list.get(i).getGuige();
			String price=list.get(i).getOnemoney();
			String images=list.get(i).getSrc();
			String image=images.substring(images.lastIndexOf("/")+1);
			DButil.update(sql, name,quantity,wiegth,price,image,uid);
		}
		
	}
	
}
