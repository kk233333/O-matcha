package com.omatcha.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.omatcha.pojo.Tabeclass;
import com.omatcha.test.Yyp;

public class ShoppingServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
				HttpSession ss=req.getSession();
			String address =req.getParameter("dizhi");
			ss.setAttribute("address", address);
			String Consignee =req.getParameter("shouname");
			ss.setAttribute("Consignee", Consignee);
			String Consigneephone =req.getParameter("shounumber");
			ss.setAttribute("Consigneephone", Consigneephone);
			String Reservations =req.getParameter("yuyuename");
			ss.setAttribute("Reservations", Reservations);
			String Reservationsphone =req.getParameter("yuyuenumber");
			ss.setAttribute("Reservationsphone", Reservationsphone);
			String time =req.getParameter("time");
			ss.setAttribute("time", time);
			String Remarks =req.getParameter("beizhu");
			ss.setAttribute("Remarks", Remarks);
			String money =req.getParameter("money");
			ss.setAttribute("money", money);
			String Paymentmethod =req.getParameter("fangshi");
			ss.setAttribute("Paymentmethod", Paymentmethod);
			String abc ="ok";
			
			ObjectMapper om = new ObjectMapper();
			om.writeValue(resp.getWriter(), abc);
			
			
			List<List<String>> list = JSONArray.fromObject(req.getParameter("splist"));
				List<Tabeclass>splist =new ArrayList();
			for (int i = 0; i < list.size(); i++) {
				JSONObject jsonobject = JSONObject.fromObject(list.get(i));
				Tabeclass user= (Tabeclass)JSONObject.toBean(jsonobject,Tabeclass.class);
				splist.add(user);
			}
			
				ss.setAttribute("Orderlist", splist);
			System.out.println(splist.size());
				
			
				 
			
	}

}
