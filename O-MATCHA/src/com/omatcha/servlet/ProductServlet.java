package com.omatcha.servlet;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.service.GoodsService;
import com.omatcha.service.impl.GoodsServiceImpl;
/***
 * 实现商品分页展示
 * @author qingxiping
 *
 */
public class ProductServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		GoodsService gs = new GoodsServiceImpl();
		HttpSession session = req.getSession();
		List goodsList = gs.queryGoods();
		int total = goodsList.size();
		int start = 0;
		int count = 8;
		try{
			start = Integer.parseInt(req.getParameter("start"));
		}catch(Exception e){
			
		}
		
		int next = start+count>total?start:start+count;
		session.setAttribute("next",next);
		
		int pre = start-count>0?start-count:0;
		session.setAttribute("pre", pre);
		
		List goodsPagerList = gs.goodsPager(start, count);
		session.setAttribute("goodslist", goodsPagerList);
		
		req.getRequestDispatcher("page/product.jsp").forward(req, resp);;
		
	}

	
}
