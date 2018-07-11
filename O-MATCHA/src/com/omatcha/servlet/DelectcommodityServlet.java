package com.omatcha.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omatcha.dao.impl.CartDaoImpl;

public class DelectcommodityServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
			
			System.out.println("进来了哦");
			System.out.println(req.getParameter("cgid"));
			int a=Integer.valueOf((String)req.getAttribute("cgid"));
			CartDaoImpl cd =new CartDaoImpl();
			cd.deleteGoods(a);
		
	}

}
