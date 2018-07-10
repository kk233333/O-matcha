package com.omatcha.service;

import java.util.List;

import com.omatcha.pojo.Expressadress;


public interface ExpressadressService {
	public boolean insertExpressadress(Expressadress expressadress);
	public List<Object> selectExpressadress();
	
	
}
