package com.omatcha.test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.omatcha.pojo.Shopping;

public class Yyp {
	public static void main(String[] args) {
		Date date =new Date();	
		DateFormat  f=new   SimpleDateFormat( "yyyy年MM月dd日     hh:MM ");
		String t=f.format(date);
		System.out.println(t);
		
		List list =new ArrayList();
		list.add(new Shopping());
		list.add(new Shopping());
		System.out.println(list .toString());
		
	}
		

}
