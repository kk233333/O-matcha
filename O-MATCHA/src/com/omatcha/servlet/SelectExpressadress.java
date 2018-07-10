package com.omatcha.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.Expressadress;
import com.omatcha.pojo.Users;
import com.omatcha.service.ExpressadressService;
import com.omatcha.service.impl.ExpressadressServiceImpl;

public class SelectExpressadress extends HttpServlet{
	ExpressadressService ea = new ExpressadressServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		HttpSession session = req.getSession(true);
		LoginServlet userlist = new LoginServlet();
		Users user = userlist.user;
		List<Object> expressadress = ea.selectExprssadress(user);
		if (expressadress.size()>0) {
			session.setAttribute("expressadresslist", expressadress);
			
		}
		
	}

	
}
