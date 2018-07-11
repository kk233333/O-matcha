package com.omatcha.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;

public class Forgetpwd extends HttpServlet{
	UserService us = new UserServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		HttpSession session = req.getSession(true);
		
		Users user = new Users();
		
		String modiname = req.getParameter("modiname");
		String modiphone = req.getParameter("modiphone");
		String newpassword = req.getParameter("newpwd");
		
		user.setUname(modiname);
		user.setUphone(modiphone);
		user.setPasswords(newpassword);
		
		us.forgetpwd(user);
	}

		
	
}
