package com.omatcha.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;

public class CheckName extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
        // 接收前端输入的用户名
        String uname = req.getParameter("username");
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");

        UserService us = new UserServiceImpl();
        List <Object>list = us.selectUserName();
        for (int i = 0; i < list.size(); i++) {
        	if(list.get(i)==uname){
                resp.getWriter().write("用户名已存在");
            }else{
            	resp.getWriter().write("用户名不存在");
            }
		}

        
		
	}

}
