package com.omatcha.dao;

import java.util.List;

import com.omatcha.pojo.Goods;

/***
 * goods的dao层
 * @author qingxiping
 *
 */
public interface GoodsDao {
	
	//查询单个商品
	public Goods singleGoods(Class clazz,int id);
	
	//查询全部商品
	public List<Object> queryGoods();
	
	//分页查询商品
	public List<Object> goodsPager(int start,int count);
	
	//商品类型分页查询
	public List<Object> goodsTypePager(int start,int count,String type);
	
	//商品种类分页查询
	public List<Object> goodsSpeciesPager(int start,int count,String species);
	
}
