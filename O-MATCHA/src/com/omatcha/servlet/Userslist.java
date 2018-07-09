package com.omatcha.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;

public class Userslist extends HttpServlet{
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
		
		String unickname = req.getParameter("Nickname");
		String usex = req.getParameter("usex");
		String birthday = req.getParameter("birthday");
		String uprovince = req.getParameter("cmbProvince");
		String ucity = req.getParameter("cmbCity");
		String uarea = req.getParameter("cmbArea");
		String uadress = req.getParameter("uadress");
		
		LoginServlet loginuser = new LoginServlet();
		
		Users user = loginuser.user;
		user.setNickname(unickname);
		user.setUsex(usex);
		user.setBirthday(birthday);
		user.setUprovince(uprovince);
		user.setUcity(ucity);
		user.setUcountry(uarea);
		user.setUadress(uadress);
		
		if(us.Userslist(user)){
			session.setAttribute("unickname", unickname);
			session.setAttribute("usex", usex);
			session.setAttribute("birthday", birthday);
			session.setAttribute("ucity", ucity);
			session.setAttribute("uarea", uarea);
			session.setAttribute("uadress", uadress);
			}
		
	
	}
	
}
