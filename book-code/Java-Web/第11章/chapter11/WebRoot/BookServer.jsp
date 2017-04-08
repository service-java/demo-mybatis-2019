<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String pub = request.getParameter("pub");
	String author = request.getParameter("author");
	out.print("<tr><td>" + id + "</td><td>" + name + "</td><td>"
			+ price + "</td><td>" + pub + "</td><td>" + author
			+ "</td></tr>");
%>
