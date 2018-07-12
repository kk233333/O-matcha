package com.omatcha.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.Users;
import com.omatcha.service.SelectOrderService;
import com.omatcha.service.impl.SelectOrderServiceImpl;

public class SelectOrderServlet extends HttpServlet{
	SelectOrderService sos = new SelectOrderServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		HttpSession session = req.getSession();
		Users  uersid = (Users) session.getAttribute("wuser");
		List<Object> orderlist = sos.selectOrder(uersid);
		
		if (orderlist.size()>0) {
			session.setAttribute("orderlist", orderlist);
			
		}
		
	}
	
	
}
