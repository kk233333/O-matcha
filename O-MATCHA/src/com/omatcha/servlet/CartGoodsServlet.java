package com.omatcha.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.omatcha.pojo.CartGoods;
import com.omatcha.pojo.Goods;
import com.omatcha.service.CartService;
import com.omatcha.service.GoodsService;
import com.omatcha.service.impl.CartServiceImpl;
import com.omatcha.service.impl.GoodsServiceImpl;
/***
 * 购物车servlet
 * @author qingxiping
 *
 */
public class CartGoodsServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		CartService cs = new CartServiceImpl();
		GoodsService gs = new GoodsServiceImpl();
		HttpSession session = req.getSession();
		String a = req.getParameter("a");
		Goods goods = null;
		CartGoods cartGoods = null;
		int weight =Integer.parseInt(req.getParameter("weight").substring(0,1));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		if("add".equals(a)){
			goods = (Goods) req.getSession().getAttribute("goods");
			cartGoods = new CartGoods();
			cartGoods.setName(goods.getName());
			cartGoods.setQuantity(quantity);
			cartGoods.setPrice(goods.getPrice());
			cartGoods.setWeight(weight);
			cartGoods.setImage(goods.getImage1());
			cartGoods.setUid(1);
			cs.addGoods(cartGoods);
		}else if("buynow".equals(a)){
			goods = (Goods) req.getSession().getAttribute("goods");
			cartGoods = new CartGoods();
			cartGoods.setName(goods.getName());
			cartGoods.setQuantity(quantity);
			cartGoods.setPrice(goods.getPrice());
			cartGoods.setWeight(weight);
			cartGoods.setImage(goods.getImage1());
			cartGoods.setUid(1);
			cs.addGoods(cartGoods);
			resp.sendRedirect("page/shoppingcart.jsp");
		}
		
		
		
		
		
		
	}

}
