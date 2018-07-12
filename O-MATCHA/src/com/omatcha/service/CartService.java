package com.omatcha.service;

import java.util.List;

import com.omatcha.pojo.CartGoods;

/***
 * cart的Service层
 * @author qingxiping
 *
 */
public interface CartService {
		//增加购物车商品
		public boolean addGoods(CartGoods cartGoods);
		//删除购物车商品
		public boolean deleteGoods(int cgid);
		//更新购物车商品
		public boolean UpdateGoods(int cgid,int quantity);
		//查询购物车商品
		public List<Object> queryGoods(String sql,Object...objects);
		//查询购物车商品数量
		public int queryCount(String sql,Object...objects);
}
