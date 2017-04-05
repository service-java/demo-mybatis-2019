package com;

public class MyTools {
	
	// static 直接通过类名访问
	public static String change(String str){
		str=str.replace("<","&lt;");
		str=str.replace(">","&gt;");
		return str;		
	}
}