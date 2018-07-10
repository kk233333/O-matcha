package com.omatcha.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omatcha.pojo.Goods;
import com.omatcha.service.GoodsService;
import com.omatcha.service.impl.GoodsServiceImpl;

public class SingleServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		GoodsService gs = new GoodsServiceImpl();
		int gid = Integer.parseInt(req.getParameter("gid"));
		Goods goods =null;
		goods = gs.singleGoods(Goods.class, gid);
		req.getSession().setAttribute("goods", goods);
		resp.sendRedirect("page/single.jsp");
		
	}
	
	

}
