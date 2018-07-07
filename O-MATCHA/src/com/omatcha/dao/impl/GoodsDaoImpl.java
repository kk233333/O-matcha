package com.omatcha.dao.impl;

import java.util.List;

import com.omatcha.dao.GoodsDao;
import com.omatcha.pojo.Goods;
import com.omatcha.util.DButil;

/***
 * goodsDao的实现类
 * @author qingxiping
 *
 */
public class GoodsDaoImpl implements GoodsDao{

	//查询单个商品
		public Goods singleGoods(Class clazz,int id) {
			String tabname = clazz.getSimpleName().toLowerCase();
			String sql = "select * from "+tabname+" where gid=?";
			return (Goods) DButil.selectSingleObject(sql, clazz, id);
		}
	//分页查询商品
	public List<Object> goodsPager(int start, int count) {
		String sql = "select * from goods limit "+start+","+count;
		
		return DButil.query(sql, Goods.class, null);
	}
	//商品类型分页查询
	public List<Object> goodsTypePager(int start, int count, String type) {
		String sql = "select * from goods limit "+start+","+count+" where type=?";
		return DButil.query(sql, Goods.class, type);
	}
	//商品种类分页查询
	public List<Object> goodsSpeciesPager(int start, int count, String species) {
		String sql = "select * from goods limit "+start+","+count+" where species=?";
		return DButil.query(sql, Goods.class, species);
	}
	//查询全部商品
	public List<Object> queryGoods() {
		String sql = "select * from goods";	
		return DButil.query(sql, Goods.class, null);
	}

	

}
