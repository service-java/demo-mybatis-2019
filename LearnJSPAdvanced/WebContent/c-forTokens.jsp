<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>测试&lt;c:forTokens&gt;标签</title>
  </head>
  
  <body>
<c:set var="sourceStr" value="无语|冰儿|wgh|简单|simpleRain"/>
原字符串：<c:out value="${sourceStr}"/>
<br>分割后的字符串：
<c:forTokens var="str" items="${sourceStr}" delims="|" varStatus="status">
	<c:out value="${str}"></c:out> ☆ 
	<c:if test="${status.last}">
		<br>总共输出<c:out value="${status.count}"></c:out>个元素。
	</c:if>
</c:forTokens>

  </body>
</html>
