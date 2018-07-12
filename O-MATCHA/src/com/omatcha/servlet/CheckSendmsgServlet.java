package com.omatcha.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

public class CheckSendmsgServlet extends HttpServlet{
	SendsmgServlet Ssmg = new SendsmgServlet();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String inputmsgcode=req.getParameter("msgcode");
		
		Map<String,Integer> map=new HashMap<String, Integer>();
		inputmsgcode.length();
		if (inputmsgcode.length()>0&&Ssmg.send!=null) {
			if(Ssmg.send.equals(inputmsgcode)){
    		 map.put("msg",1);
			}
			else{
        	 map.put("msg",2);
			}
		}
    	ObjectMapper om = new ObjectMapper();
    	om.writeValue(resp.getWriter(), map);
		
		
		
		
		
	}
	
	
	
}
