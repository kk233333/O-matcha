package com.omatcha.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.omatcha.pojo.ShoppingCart;

public class ShoppingCartServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		System.out.println("进来了哦");
			HttpSession ss=req.getSession();
		
			List<List<String>> list = JSONArray.fromObject(req.getParameter("splist"));
			List<ShoppingCart>splist =new ArrayList();
		for (int i = 1; i < list.size(); i++) {
			JSONObject jsonobject = JSONObject.fromObject(list.get(i));
			ShoppingCart user= (ShoppingCart)JSONObject.toBean(jsonobject,ShoppingCart.class);
			splist.add(user);
		}
		
			ss.setAttribute("confirmlist", splist);
			for (int i = 0; i < splist.size(); i++) {
				System.out.println(splist.get(i));
			}
		
			if(splist.size()>0){
				String abc ="ok";
			ObjectMapper om = new ObjectMapper();
			om.writeValue(resp.getWriter(), abc);
			}
		
		
	}
	

}
