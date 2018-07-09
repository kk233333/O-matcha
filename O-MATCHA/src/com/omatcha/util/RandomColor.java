package com.omatcha.util;

import java.util.Arrays;
import java.util.Random;

public class RandomColor {

	//随机生成颜色
	public static int[] getRandColorCode(){  
		  int r,g,b;  
		  Random random = new Random();  
		  r = random.nextInt(256); 
		  g = random.nextInt(256); 
		  b = random.nextInt(256); 
		     
		  r = r== 1 ? 0 + r : r ;  
		  g = g== 1 ? 0 + g : g ;   
		  b = b== 1 ? 0 + b : b ;  
		     
		  int [] i = {r,g,b};
		  return i;  
		 }
	
	
	public static void main(String[] args) {
		int[] i = getRandColorCode();
		System.out.println(Arrays.toString(i));
	}
	
}
