package com.omatcha.test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.omatcha.dao.impl.AddOrderimpl;
import com.omatcha.pojo.Shopping;

public class Yyp {
	public static void main(String[] args) {
		AddOrderimpl add =new AddOrderimpl();
		int a =add.AddOrder(1, "fgdfg", "gfdgdf", "gfdgdf", "gfdgdf", "gfdgdf", "gfdgdf", new ArrayList().toString());
			System.out.println(a);
		
	}
}
