<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.Locale"%>    
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>HTML5 Page Title</title>
  
  <!-- <link rel="stylesheet" href="css/default.css"> -->
</head>
<body>

<p>客户提交信息的方式：<%=request.getMethod()%></p>
<p>使用协议：<%=request.getProtocol()%></p>
<p>客户端文件地址：<%=request.getRequestURI()%></p>
<p>脚本文件的文件路径:<%=request.getServletPath()%></p>
<p>客户端IP地址：<%=request.getRemoteAddr()%></p>
<p>服务器端口号：<%=request.getServerPort()%></p>
<p>服务器名称：<%=request.getServerName()%></p>
<p>客户端的机器名称：<%=request.getRemoteHost()%></p>
<p>获得Http协议文件头Host:<%=request.getHeader("host")%></p>

<!-- 判断当前请求是否使用了一个类似HTTP的安全协议 -->
<p>用户安全信息:<%=request.isSecure()%></p>

<%
Locale locale = request.getLocale();
if(locale.equals(Locale.US)) {
	out.print("Welcome to Beijing!");
} else if(locale.equals(locale.CHINA)) {
	out.print("北京欢迎你！"); // 内置浏览器无法显示
}

%>

<!-- <script src="js/default.min.js"></script> -->
	
</body>
</html>