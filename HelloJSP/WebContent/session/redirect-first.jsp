<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
session.setAttribute("information","这是向session中保存的数据");
response.sendRedirect("redirect-second.jsp");
%>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>HTML5 Page Title</title>
  
  <!--<link rel="stylesheet" href="css/default.css">-->
</head>
<body>


<!--<script src="js/default.min.js"></script>-->
	
</body>
</html>