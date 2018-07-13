package com.omatcha.servlet;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.omatcha.dao.impl.AddOrderimpl;
import com.omatcha.pojo.Shopping;
import com.omatcha.pojo.ShoppingCart;
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
			String uid =
					 String.valueOf(ss.getAttribute("uid"));
			
			long dingdannumber=System.currentTimeMillis();
			
			Date date =new Date();	
			DateFormat  f=new   SimpleDateFormat( "yyyy年MM月dd日     hh:MM ");
			String xiadantime=f.format(date);
			ss.setAttribute("dingdannumber", String.valueOf(dingdannumber));
			ss.setAttribute("xiadantime", xiadantime);
			
			List<List<String>> list = JSONArray.fromObject(req.getParameter("splist"));
				List<Shopping>splist =new ArrayList();
			for (int i = 0; i < list.size(); i++) {
				JSONObject jsonobject = JSONObject.fromObject(list.get(i));
				Shopping user= (Shopping)JSONObject.toBean(jsonobject,Shopping.class);
				splist.add(user);
			}
			for (int i = 0; i < splist.size(); i++) {
				System.out.println(splist.get(i));
			}
				ss.setAttribute("Orderlist", splist);
				
				ObjectMapper om = new ObjectMapper();
				String who=req.getParameter("who");
				
				if(uid.equals("null")&&who.equals("logong")){
					System.out.println("login");
					om.writeValue(resp.getWriter(), "login");
					ss.setAttribute("jump", "jump");
				}
				if(uid.equals("null")&&who.equals("undefined")){
					System.out.println("tis");
					om.writeValue(resp.getWriter(), "tis");
				}
				if(!(uid.equals("null"))&&who.equals("undefined")){
					System.out.println("gfdgd");
					om.writeValue(resp.getWriter(), uid);
				}
			
	}

}
