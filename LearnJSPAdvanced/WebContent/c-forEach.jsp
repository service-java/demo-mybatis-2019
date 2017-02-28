<%@ page language="java"  pageEncoding="GBK" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>c:forEach</title>
  </head>

  <body>
<%
ArrayList<String> list = new ArrayList<>();
list.add("物语");
list.add("hello");
list.add("wgh");

request.setAttribute("list",list);%>

<c:forEach items="${list}" var="tag" varStatus="id">
	${id.count }&nbsp;${tag }<br>
</c:forEach>
<c:forEach begin="1" end="6" step="1" var="str">
	<c:out value="${str}"/>编程经典手电
</c:forEach>
  </body>
</html>
