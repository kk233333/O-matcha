package com.omatcha.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;
/**
 * 
 * 注册的servlet方法
 * 
 * wangwei
 * */
public class signupservlet extends HttpServlet{
		UserService us = new UserServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("进入了都post");
		String a = req.getParameter("a");
		
		//注册
		if("signup".equals(a)){
			String name = req.getParameter("zcname");
			String phonenum = req.getParameter("zcphone");
			String email = req.getParameter("useremail");
			String passwords = req.getParameter("userpassword");
			
			
			
			Users user = new Users();
			user.setUname(name);
			user.setPasswords(passwords);
			user.setEmail(email);
			user.setUphone(phonenum);
			
			if(us.signUpService(user)){
				RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
				rd.forward(req, resp);
				}
			else{
				resp.sendRedirect("sign-up.jsp");
			}
			
		}
		
			
	}
	
}
