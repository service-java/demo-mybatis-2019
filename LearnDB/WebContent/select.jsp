<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
	<title>SELECT操作</title>
	<style>
		table, th, td {
			border: 1px solid;
		}
		
		table {
			width: 100%;
		}
	</style>
</head>
<body>

<sql:setDataSource 
	var="snapshot" 
	driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/runoob?useUnicode=true&characterEncoding=utf-8"
    user="root"  
    password="ljc578762"/>
  
<sql:query dataSource="${snapshot}" var="result">
select * 
from websites 
where country = 'USA';
</sql:query>

<table>
	<tr>
   		<th>ID</th>
   		<th>站点名</th>
   		<th>站点地址</th>
	</tr>
	
	<c:forEach var="row" items="${result.rows}">
	<tr>
   		<td><c:out value="${row.id}"/></td>
   		<td><c:out value="${row.name}"/></td>
   		<td><c:out value="${row.url}"/></td>
	</tr>
	</c:forEach>
</table>
 
</body>
</html>
