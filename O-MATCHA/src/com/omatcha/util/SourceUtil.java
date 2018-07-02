package com.omatcha.util;

import java.io.IOException;



import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.tomcat.dbcp.dbcp.BasicDataSource;

/***
 * 数据连接池类
 * @author qingxiping
 *
 */
public class SourceUtil {
	//dbcp提供的连接池�?单例)
	private static BasicDataSource dataSource = null;

	public static void init(){
		Properties prop = new Properties();
		try {
			prop.load(SourceUtil.class.getClassLoader().getResourceAsStream("DB.properties"));
			String driver = prop.getProperty("driver");
			String url = prop.getProperty("url");
			String username = prop.getProperty("user");
			String password = prop.getProperty("password");
			
			String init = prop.getProperty("init");
			String max = prop.getProperty("max");
			String min = prop.getProperty("min");
			String maxActive = prop.getProperty("maxActive");
			String maxWait = prop.getProperty("maxWait");
			//创建数据库连接池
			dataSource = new BasicDataSource();
			
			dataSource.setDriverClassName(driver);
			dataSource.setUrl(url);
			dataSource.setUsername(username);
			dataSource.setPassword(password);
			
			if(init!=null){
				dataSource.setInitialSize(Integer.parseInt(init));
			}
			if(max!=null){
				dataSource.setInitialSize(Integer.parseInt(max));
			}
			if(min!=null){
				dataSource.setInitialSize(Integer.parseInt(min));
			}
			if(maxActive!=null){
				dataSource.setInitialSize(Integer.parseInt(maxActive));
			}
			if(maxWait!=null){
				dataSource.setInitialSize(Integer.parseInt(maxWait));
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	//获取连接的方�?
	public static synchronized Connection getConnection(){
		if(dataSource==null){
			init();
		}
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
