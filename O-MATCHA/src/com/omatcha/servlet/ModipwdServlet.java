package com.omatcha.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;

public class ModipwdServlet extends HttpServlet{
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
		
		LoginServlet lguser = new LoginServlet();
		
		Users user = new Users();
		
		String newpassword = req.getParameter("newpwd");
		user.setPasswords(newpassword);
		user.setUid(lguser.user.getUid());
		int j ;
		if (us.modipwd(user)) {
			j=1;
		}else{
			j=2;
		}
		
		if (j==1) {
			req.getRequestDispatcher("/page/genggaichengong.jsp").forward(req, resp);
		}
		else{
			 PrintWriter writer = resp.getWriter();
				writer.write("<script>alert('更改失败！');window.location.href='downpage-setpwd.jsp';</script>");
				writer.flush();
				writer.close();
		}
		
	}

}
