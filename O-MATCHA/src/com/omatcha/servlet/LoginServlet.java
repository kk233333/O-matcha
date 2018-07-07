package com.omatcha.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;

public class LoginServlet extends HttpServlet{
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
	 
	 
	 String username = req.getParameter("uname");
	 String password = req.getParameter("password");
	 String remember = req.getParameter("passcookies");
	 
	 
	 List<Object> list = us.userLoginService(username, password);
	 //登录方法
	 if (us.userLoginService(username, password).size()>0) {
		 session.setAttribute("wusername", username);
		 session.setAttribute("wpassword", password);
		 session.setAttribute("id", list.get(0));
		
		//将密码记住在cookie
			if (remember != null) {
				Cookie c1 = new Cookie("username", username);
				Cookie c2 = new Cookie("password", password);
				c1.setMaxAge(1000);
				c2.setMaxAge(1000);//这里设置保存这条Cookie的时间
				resp.addCookie(c1);//添加Cookie
				resp.addCookie(c2);
				PrintWriter writer = resp.getWriter();
				writer.write("<script>alert('已成功记住账号密码');</script>");
				writer.flush();
				
			} else {
				PrintWriter writer = resp.getWriter();
				writer.write("<script>alert('未选择记住账号密码');</script>");
				writer.flush();
				}
			 req.getRequestDispatcher("/page/index.jsp").forward(req, resp);
	}
	 else{
		 PrintWriter writer = resp.getWriter();
			writer.write("<script>alert('账号密码错误！');window.location.href='login.jsp';</script>");
			writer.flush();
			writer.close();
	 }
	 
	
	 
	 
	}
	
}
