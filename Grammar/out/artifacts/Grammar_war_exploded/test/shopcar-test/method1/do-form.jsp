<%@ page contentType="text/html;charset=utf-8" %>

<%@ page import="com.ShopCar"%>	<!-- 导入ShopCar类 -->
<% 
   ShopCar car = new ShopCar();			//创建一个实例
   session.setAttribute("car",car);   	//将创建的JavaBean实例存在session范围内
%>
<jsp:setProperty name="car" property="*"/>


<!-- 显示输入的信息 -->
<%--  物品：<%=car.getName()%> --%>
<br>
<%--   产地：<%=car.getMaker() %> --%>
<br>
<a href="form.jsp">继续输入</a>