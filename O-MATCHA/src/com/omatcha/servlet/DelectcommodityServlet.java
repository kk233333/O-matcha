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
			String uid=(String)req.getSession().getAttribute("uid");
			System.out.println(req.getParameter("cgid"));
			String name =req.getParameter("spname");
			if(uid!=null){
				int a=Integer.valueOf((String)req.getParameter("cgid"));
				CartDaoImpl cd =new CartDaoImpl();
				cd.deleteGoods(a);
			}else{
				System.out.println(name);
				List <CartGoods>list=Cartgoodlist.getCartgoodlist().getL();
				for (int i = 0; i < list.size(); i++) {
					if(list.get(i).getName().equals(name)){
						list.remove(i);
					}
				}
				req.getSession().setAttribute("cartgoodslist", list);
			}
			
			
			
		
	}

}
