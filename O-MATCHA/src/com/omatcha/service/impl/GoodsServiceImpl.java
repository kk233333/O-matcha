package com.omatcha.service.impl;

import java.util.List;

import com.omatcha.dao.GoodsDao;
import com.omatcha.dao.impl.GoodsDaoImpl;
import com.omatcha.pojo.Goods;
import com.omatcha.service.GoodsService;
/***
 * 
 * @author qingxiping
 *
 */
public class GoodsServiceImpl implements GoodsService{

	GoodsDao goodsdao = new GoodsDaoImpl();
	
	public Goods singleGoods(Class clazz, int id) {
		return goodsdao.singleGoods(clazz, id);
	}

	public List<Object> goodsPager(int start, int count) {
		return goodsdao.goodsPager(start, count);
	}

	public List<Object> goodsTypePager(int start, int count, String type) {
		return goodsdao.goodsTypePager(start, count, type);
	}

	public List<Object> goodsSpeciesPager(int start, int count, String species) {
		return goodsdao.goodsSpeciesPager(start, count, species);
	}

	public List<Object> queryGoods() {
		return goodsdao.queryGoods();
	}

}
