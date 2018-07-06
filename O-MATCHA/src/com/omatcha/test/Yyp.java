package com.omatcha.test;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Yyp {
	public static <T> T jsonToObject(String jsonString, Class<T> pojoCalss) {  
		try{  
		    Object pojo;  
		    net.sf.json.JSONObject jsonObject = net.sf.json.JSONObject.fromObject(jsonString);  
		    pojo = net.sf.json.JSONObject.toBean(jsonObject, pojoCalss);  
		    return (T)pojo;  
		}catch(Exception ex){  
		    ex.printStackTrace();  
		      
		    return null;  
		}  
	}
	

}
