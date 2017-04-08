<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String bigclass = request.getParameter("bigclass");
	String subclass = "";
	if (bigclass.equals("www"))
		bigclass = "网络管理,硬件设备,网络协议";
	if (bigclass.equals("os"))
		subclass = "Windows,Linux,Unix,其他";
	if (bigclass.equals("db"))
		subclass = "SQL Server,Oracle,MySQL,其他";
	if (bigclass.equals("pg"))
		subclass = ".NET,Java,C++,C,软件工程,其他";
	out.print(subclass);
%>

