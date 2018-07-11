package com.omatcha.pojo;

import java.util.ArrayList;
import java.util.List;

public class Cartgoodlist {
	   private static Cartgoodlist s=new Cartgoodlist();        
	    private Cartgoodlist(){
	        
	     }  
	     public static Cartgoodlist getCartgoodlist(){
	         return s;
	     }
	     private static List l = new ArrayList();
		public static List getL() {
			return l;
		}
		public static void setL(List l) {
			Cartgoodlist.l = l;
		}

}
