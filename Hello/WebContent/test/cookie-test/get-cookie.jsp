<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>

<html>
<head>
	<title>cookie测试</title>
</head>
<body>

<%
//从request中获得Cookies集
Cookie[] cookies=request.getCookies();
Cookie cookie_response = null;

// 若cookies不为空则取
if(cookies!=null){  
	 cookie_response=cookies[0]; // 还是0
}
out.println("本次访问时间："+new java.util.Date().toLocaleString() +"<br>");

if(cookie_response!=null){
//输出上一次访问的时间。并设置cookie_response对象为最新时间。
 	out.println("上一次访问时间："+cookie_response.getValue());
   	cookie_response.setValue(new java.util.Date().toLocaleString());
}

//如果Cookies集为空，创建cookie，并加入到response中
if(cookies==null){
   	cookie_response=new Cookie("AccessTime","");
   	cookie_response.setValue(new java.util.Date().toLocaleString());
   	response.addCookie(cookie_response);
}

%>

</body>
</html>
