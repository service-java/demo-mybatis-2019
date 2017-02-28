<%@ page contentType="text/html; charset=utf-8" 
	language="java" errorPage="" %>

<html>
<head>
  <title>处理结果</title>
</head>
<body>

<%
// 防止中文乱码
request.setCharacterEncoding("utf-8");

String username = request.getParameter("username");
String pwd = request.getParameter("pwd");

out.println("用户名为：" + username);
out.println("密码为：" + pwd);

%>

</body>
</html>
