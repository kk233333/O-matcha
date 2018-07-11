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
import com.omatcha.pojo.Users;
import com.omatcha.service.UserService;
import com.omatcha.service.impl.UserServiceImpl;

public class CheckPhone extends HttpServlet{
	UserService us = new UserServiceImpl();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
				doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
        // 接收前端输入的用户名
        String uphone= req.getParameter("inputPhone");
        // 接收查询到的用户名
        List<Object> list =us.selectUserName();
        /*for (Object object : list) {
			System.out.println(object);
		}*/
        Map<String,Integer> map=new HashMap<String, Integer>();
        int j =1;
        for (int i = 0; i < list.size(); i++) {
        	if(uphone.equals(((Users)list.get(i)).getUphone())){
         	  j++;
         	  break;
         	  }
            else{
            	j =1;
            }
		}
      	   map.put("msg",j);
        
        ObjectMapper om = new ObjectMapper();
		om.writeValue(resp.getWriter(), map);
		
	}
	
}
