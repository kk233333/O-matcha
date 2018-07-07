package com.omatcha.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
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
        //设置字符编码集
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        // 接收查询到的用户名
        UserService us = new UserServiceImpl();
        List <Object>list = us.selectUserName();
        
        Map<String,String> map=new HashMap<String, String>();
        
        int j = 0 ;
        for (int i = 0; i < list.size(); i++) {
        	if(list.get(i)==uname){
               j=j++;
            }
		}
        if(j==0){
            map.put("msg","1");
      	  }
      	  else{
      		 map.put("msg","2");
      	  }
        ObjectMapper om = new ObjectMapper();
		om.writeValue(resp.getWriter(), map);
        
		
	}

}
