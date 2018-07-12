package com.omatcha.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.omatcha.pojo.CartGoods;
import com.omatcha.pojo.Users;
import com.omatcha.service.CartService;
import com.omatcha.service.impl.CartServiceImpl;


public class CountServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CartService cs = new CartServiceImpl();
		String sql = "select sum(quantity) from cartgoods where uid=?";
		int count = 0;
		String portrait = null;
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("uid");
		List list = (List) session.getAttribute("cartgoodslist");
		if(uid==null){
			for (Object obj : list) {
				count+=((CartGoods) obj).getQuantity();
			}
		}else{
			count = cs.queryCount(sql, Integer.parseInt(uid));
			Users user = (Users) session.getAttribute("wuser");
			portrait = user.getPortrait();	
		}
		Map map = new HashMap();
		map.put("count", count+"");
		map.put("portrait", portrait);
		ObjectMapper om = new ObjectMapper();		
		om.writeValue(resp.getWriter(), map);
		
	}
	
	

}
