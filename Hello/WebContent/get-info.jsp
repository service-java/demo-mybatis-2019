<%@page import="java.util.Locale"%>
<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>获取客户信息</title>
</head>
<body>
<p>客户提交信息的方式：<%=request.getMethod()%></p>
<p>使用的协议：<%=request.getProtocol()%></p>
<p>获取发出请求字符串的客户端地址：<%=request.getRequestURI()%></p>
<p>获取提交数据的客户端IP地址：<%=request.getRemoteAddr()%></p>
<p>获取服务器端口号：<%=request.getServerPort()%></p>
<p>获取服务器的名称：<%=request.getServerName()%></p>
<p>获取客户端的机器名称：<%=request.getRemoteHost()%></p>
<p>获取客户端所请求的脚本文件的文件路径:<%=request.getServletPath()%></p>
<p>获得Http协议定义的文件头信息Host的值:<%=request.getHeader("host")%></p>

<!-- 判断当前请求是否使用了一个类似HTTP的安全协议 -->
<p>用户安全信息:<%=request.isSecure()%></p>

<%
Locale locale = request.getLocale();
if(locale.equals(Locale.US)) {
	out.print("Welcome to Beijing!");
} else if(locale.equals(locale.CHINA)) {
	out.print("北京欢迎你！");
}

%>

</body>
</html>
