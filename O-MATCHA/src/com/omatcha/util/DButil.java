package com.omatcha.util;

import java.lang.reflect.Field;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * 提供操作数据库的增删改方法
 * @author  qingxiping
 */
public class DButil {
	//查询单个对象化数据
		public static Object selectSingleObject(String sql,Class clazz,Object...objects){
			Connection c = DBSource.getConnection();
			Object object = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			try {
				ps = c.prepareStatement(sql);
				if(objects!=null){
					for (int i = 1; i <= objects.length; i++) {
						ps.setObject(i, objects[i-1]);
					}
				}
				rs = ps.executeQuery();
				ResultSetMetaData metaData = rs.getMetaData();
				if(rs.next()){
					object = clazz.newInstance();//通过反射方式创建对象
					for (int i = 0; i < metaData.getColumnCount(); i++) {
						//获取字段名
						String cname = metaData.getColumnName(i+1);
						//获取字段值
						Object val = rs.getObject(cname);
						//通过名字获取属性对象
						Field field = clazz.getDeclaredField(cname);
						//取消访问权限检查
						field.setAccessible(true);
						//为属性赋值
						field.set(object, val);
					}
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (NoSuchFieldException e) {
				e.printStackTrace();
			} catch (SecurityException e) {
				e.printStackTrace();
			}
			DBSource.close(c, ps, rs);
			return object;
		}
	//修改
	public static int update(String sql,Object...objects){
		Connection c = DBSource.getConnection();
		PreparedStatement ps = null;
		try {
			ps = c.prepareStatement(sql);
			if(objects!=null){
<<<<<<< HEAD
			for (int i = 1; i <= objects.length; i++) {
				ps.setObject(i, objects[i-1]);
=======
				for (int i = 1; i <= objects.length; i++) {
					ps.setObject(i, objects[i-1]);
				}
>>>>>>> a4aea06618e7e53f38c7395941f2edc8e53dc295
			}
			}
			int i = ps.executeUpdate();
			return i;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBSource.close(c, ps, null);;
		}
		return 0;
		
	}
	//查询
	public static List<Object> query(String sql,Class clazz,Object...objects){
		
		Connection c = DBSource.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		Object object = null;
		List<Object> list = new ArrayList<Object>();
		try {
			ps = c.prepareStatement(sql);
			if(objects!=null){
<<<<<<< HEAD
			for (int i = 1; i <= objects.length; i++) {
				ps.setObject(i, objects[i-1]);
=======
				for (int i = 1; i <= objects.length; i++) {
					ps.setObject(i, objects[i-1]);
				}
>>>>>>> a4aea06618e7e53f38c7395941f2edc8e53dc295
			}
			}
			rs = ps.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			while(rs.next()){
				object = clazz.newInstance();
				for (int i = 0; i < metaData.getColumnCount(); i++) {
					//获取字段�?
					String fieldname = metaData.getColumnName(i+1);
					//获取字段
					Field field = clazz.getDeclaredField(fieldname);
					//获取字段�?
					Object value = rs.getObject(fieldname);
					//取消访问权限�?��
					field.setAccessible(true);
					//为属性赋�?
					field.set(object,value);
				}
				list.add(object);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		}finally{
			DBSource.close(c, ps, rs);;
		}
		return null;
		
	}
	
}
