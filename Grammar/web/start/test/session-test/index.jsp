<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
session.setAttribute("information","向session中保存数据");
response.sendRedirect("forward.jsp"); //

//    // 重定向到新地址
//    String site = new String("http://www.runoob.com");
//    response.setStatus(response.SC_MOVED_TEMPORARILY);
//    response.setHeader("Location", site);

%>
