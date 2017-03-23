<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>测试&lt;c:removet&gt;标签</title>
</head>
  
<body>

<c:set var="name" value="编程体验网" scope="page"/>
移除前输出的变量name为：<c:out value="${name}"></c:out>

<c:remove var="name"/><br>

移除后输出的变量name为：<c:out value="${name}" default="变量name为空"></c:out>

</body>
</html>
