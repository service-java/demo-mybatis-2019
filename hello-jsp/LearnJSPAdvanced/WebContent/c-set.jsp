<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>测试&lt;c:set&gt;标签</title>
</head>
  
<body>

<c:set var="name" value="编程词典" scope="page"/>
<c:set var="hostpage" value="www.bcty365.com" scope="session"/>

<c:out value="${name}"></c:out>
<br>
<c:out value="${hostpage}"></c:out>

</body>
</html>
