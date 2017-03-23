<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>测试&lt;c:if&gt;标签</title>
</head>
  
<body>

语法一：输出用户名是否为null<br>
<c:if test="${param.user==null}" var="rtn" scope="page"/>
<c:out value="${rtn}"/><br>

语法二：如果用户名为空，则输出一个用于输入用户名的文本框及“提交”按钮<br>
<c:if test="${param.user==null}">
	<form action="" method="post">
		请输入用户名：<input type="text" name="user">
		<input type="submit" value="提交">
	</form>
</c:if>

</body>
</html>
