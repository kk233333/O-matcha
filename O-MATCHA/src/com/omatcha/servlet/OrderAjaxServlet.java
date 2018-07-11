package com.omatcha.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.dao.impl.AddOrderimpl;
import com.omatcha.dao.impl.CartDaoImpl;

public class OrderAjaxServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			HttpSession ss=req.getSession();
		int uid =5;
		//Integer.valueOf((String)ss.getAttribute("uid"));
		AddOrderimpl add =new AddOrderimpl();
		int a =add.AddOrder(uid,(String)ss.getAttribute("xiadantime"), (String)ss.getAttribute("dingdannumber"), (String)ss.getAttribute("address"), (String)ss.getAttribute("money"), (String)ss.getAttribute("Paymentmethod"), (String)ss.getAttribute("Consignee"), ((List)ss.getAttribute("Orderlist")).toString());
		System.out.println(a);
		
		// 根据cgid 删除购物车数据库的数据
		String cgids=req.getParameter("cgid");	
		String[] cgid=cgids.split("-");
		CartDaoImpl cd =new CartDaoImpl();
		for (int i = 0; i < cgid.length; i++) {
			cd.deleteGoods(Integer.valueOf(cgid[i]));
		}
		
	}

}
