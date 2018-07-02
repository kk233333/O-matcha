package com.omatcha.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Helper {
	//全局数组
		private final static String[] strDigits={
			"0","1","2","3","4","5","6","7","8","9","a","b","c","d","e","f"
		};
		//定义�?��byte数组转String的方�?     返回为数字和字符�?
		private static String byteToArrayString(byte bByte){
			int iRet = bByte;
			if(iRet<0){
				iRet+=256;
			}
			int iD1 = iRet/16;
			int iD2 = iRet%16;
			
			return strDigits[iD1]+strDigits[iD2];
		}
		//返回形式只为数字
		private static String byteToNum(byte bByte){
			int iRet = bByte;
			if(iRet<0){
				iRet+=256;
			}
			return String.valueOf(iRet);
		}
		//转换字节数组�?6进制字符�?
		private static String byteToString(byte[] bByte){
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < bByte.length; i++) {
				sb.append(byteToArrayString(bByte[i]));
			}
			return sb.toString();
			
			
		}
		
		public static String getMDCode(String strObj){
			String resultString = new String(strObj);		
			try {
				MessageDigest md = MessageDigest.getInstance("MD5");
				resultString = byteToString(md.digest(strObj.getBytes()));
				return resultString;						
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}		
			return null;
		}
}
