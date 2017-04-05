<%@ page contentType="text/html;charset=utf-8" %>

<jsp:useBean id="car" class="com.ShopCar" scope="session"/>
<jsp:setProperty name="car" property="*"/>


<!-- 显示输入的信息 -->
<%--  物品：<%=car.getName()%> --%>
<br>
<%-- 产地：<%=car.getMaker() %> --%>
<br>
<a href="form.jsp">继续输入</a>