<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
  int i = 0;
  synchronized void add() {
    i++;
  }
 %>

<%-- 注意不要忘记调用 --%>
<% add(); %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>采访计数</title>

  <%-- <link rel="stylesheet" href="css/default.css"> --%>
</head>
<body>

<h1> 采访数<%=i%> </h1>

<%-- <script src="js/default.min.js"></script> --%>

</body>
</html>
