package com.omatcha.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.omatcha.dao.impl.CartDaoImpl;
import com.omatcha.pojo.CartGoods;
import com.omatcha.pojo.Cartgoodlist;
import com.omatcha.service.CartService;
import com.omatcha.service.impl.CartServiceImpl;
import com.omatcha.util.DButil;

public class DelectcommodityServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");//设置响应的字符编码
			
			System.out.println("进来了哦");
			String uid=String.valueOf(req.getSession().getAttribute("uid"));
			System.out.println(req.getParameter("cgid"));
			String name =req.getParameter("spname");
			
			System.out.println(uid);
			if(!uid.equals("null")){
				String sql = "delete from cartgoods where uid=? and cname=?";
				DButil.update(sql, Integer.valueOf(uid),name);
				
				CartService cs = new CartServiceImpl();
				String sql1 = "SELECT cgid,cname,SUM(quantity) as quantity,weight,price,image,uid FROM cartgoods where uid=? GROUP BY cname";
				List cartgoodslist = cs.queryGoods(sql1,Integer.parseInt(uid));
				req.getSession().setAttribute("cartgoodslist", cartgoodslist);
				
				
				System.out.println(cartgoodslist);
				List <CartGoods>list=Cartgoodlist.getCartgoodlist().getL();
				for (int i = 0; i < list.size(); i++) {
					if(list.get(i).getCname().equals(name)){
						list.remove(i);
					}
				}
//				req.getSession().setAttribute("cartgoodslist", list);
			}else{
				System.out.println(name);
				List <CartGoods>list=Cartgoodlist.getCartgoodlist().getL();
				for (int i = 0; i < list.size(); i++) {
					if(list.get(i).getCname().equals(name)){
						list.remove(i);
					}
				}
				req.getSession().setAttribute("cartgoodslist", list);
			}
			
			
			
		
	}

}
