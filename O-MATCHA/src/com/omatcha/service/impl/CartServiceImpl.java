package com.omatcha.service.impl;

import java.util.List;

import com.omatcha.dao.CartDao;
import com.omatcha.dao.impl.CartDaoImpl;
import com.omatcha.pojo.CartGoods;
import com.omatcha.service.CartService;
/***
 * cartservice实现类
 * @author qingxiping
 *
 */
public class CartServiceImpl implements CartService{

	CartDao cartDao = new CartDaoImpl();
	@Override
	public boolean addGoods(CartGoods cartGoods) {
		return cartDao.addGoods(cartGoods)>0;
	}

	@Override
	public boolean deleteGoods(int cgid) {
		return cartDao.deleteGoods(cgid)>0;
	}

	@Override
	public boolean UpdateGoods(int cgid, int quantity) {
		return cartDao.UpdateGoods(cgid, quantity)>0;
	}

	@Override
	public List<Object> queryGoods(String sql,Object...objects) {
		return cartDao.queryGoods(sql,objects);
	}

	@Override
	public int queryCount(String sql, Object... objects) {		
		return cartDao.queryCount(sql, objects);
	}

}
