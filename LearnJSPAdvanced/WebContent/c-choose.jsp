<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>测试&lt;c:choose&gt;标签</title>
  </head>
  
  <body>
<c:set var="hours">
	<%=new java.util.Date().getHours()%>
</c:set>
<c:choose>
	<c:when test="${hours>6 && hours<11}" >上午好！</c:when>
	<c:when test="${hours>11 && hours<17}">下午好！</c:when>
	<c:otherwise>晚上好！</c:otherwise>
</c:choose>
 现在时间是：${hours}时 
  </body>
</html>
