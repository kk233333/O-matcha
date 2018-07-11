package com.omatcha.dao;

import java.util.List;

import com.omatcha.pojo.CartGoods;

/***
 * 购物车的dao层
 * @author qingxiping
 *
 */
public interface CartDao {
	//增加购物车商品
	public int addGoods(CartGoods cartGoods);
	//删除购物车商品
	public int deleteGoods(int cgid);
	//更新购物车商品
	public int UpdateGoods(int cgid,int quantity);
	//查询购物车商品
	public List<Object> queryGoods(String sql,Object...objects);
	

}
