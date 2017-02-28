package toolbean;

import java.io.UnsupportedEncodingException;

public class MyTools {
	public static String toChinese(String str){
		if(str==null)	str="";
		try {
			//通过String类的构造方法将，指定的字符串转换为“gb2312”编码
			str=new String(str.getBytes("ISO-8859-1"),"gb2312");
		} catch (UnsupportedEncodingException e) {
			str="";
			e.printStackTrace();
		}
		return str;
	}
}
