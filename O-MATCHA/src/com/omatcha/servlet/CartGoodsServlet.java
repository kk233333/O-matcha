package com.omatcha.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;
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
		List TempCart = new ArrayList();
		String w = req.getParameter("weight");
		String q = req.getParameter("quantity");
		int weight = Integer.parseInt(w.substring(0,1));
		int quantity = Integer.parseInt(q);	
		String uid = (String) req.getAttribute("uid");
		
		if("add".equals(a)){
			goods = (Goods) req.getSession().getAttribute("goods");
			cartGoods = new CartGoods();
			cartGoods.setName(goods.getName());
			cartGoods.setQuantity(quantity);
			cartGoods.setPrice(goods.getPrice());
			cartGoods.setWeight(weight);
			cartGoods.setImage(goods.getImage1());
			if(uid==null){
				TempCart.add(cartGoods);
			}else{
				cartGoods.setUid(Integer.parseInt(uid));
				cs.addGoods(cartGoods);
			}	
		}else if("buynow".equals(a)){
			goods = (Goods) req.getSession().getAttribute("goods");
			cartGoods = new CartGoods();
			cartGoods.setName(goods.getName());
			cartGoods.setQuantity(quantity);
			cartGoods.setPrice(goods.getPrice());
			cartGoods.setWeight(weight);
			cartGoods.setImage(goods.getImage1());
			if(uid==null){
				TempCart.add(cartGoods);
			}else{
				cartGoods.setUid(Integer.parseInt(uid));
				cs.addGoods(cartGoods);
			}
			ObjectMapper om = new ObjectMapper();
			int buy = 1;
			om.writeValue(resp.getWriter(), buy);
		}
		session.setAttribute("TempCartList", TempCart);
		
		String sql = "SELECT cgid,cname,SUM(quantity),weight,price,image,uid FROM cartgoods GROUP BY cname";
		List cartgoodslist = cs.queryGoods();
		
		
		
	}

}
