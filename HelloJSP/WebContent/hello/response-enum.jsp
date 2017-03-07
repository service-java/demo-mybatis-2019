<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<%
java.util.Enumeration enema=application.getInitParameterNames();

while(enema.hasMoreElements()){
	String name=(String)enema.nextElement();
	String value=application.getInitParameter(name);
	out.println(name+",");
	out.println(value);
	out.print("<br>");
}
%>



<!--<script src="js/default.min.js"></script>-->
	
</body>
</html>