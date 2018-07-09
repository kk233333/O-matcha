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
 * 咖啡时光的servlet类
 * @author qingxiping
 *
 */
public class CoffeeServlet extends HttpServlet{

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
		String type = (String) req.getParameter("type");
			String sql = "select * from goods where type=?";
			String t = "咖啡";
			List goodsList = gs.queryGoods(sql,"咖啡");
			int total = goodsList.size();
			int start = 0;
			int count = 8;
			try{
				start = Integer.parseInt(req.getParameter("fstart"));
			}catch(Exception e){
				
			}
			
			int next = start+count>total?start:start+count;
			session.setAttribute("fnext",next);
			
			int pre = start-count>0?start-count:0;
			session.setAttribute("fpre", pre);
			
			List goodsPagerList = gs.goodsTypePager(start, count, "咖啡");
			session.setAttribute("coffeelist", goodsPagerList);		
			
			req.getRequestDispatcher("page/coffee.jsp").forward(req, resp);
		}
	}


