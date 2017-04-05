<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>处理结果</title>
</head>
<body>
<%
request.setCharacterEncoding("gb2312");

String username=request.getParameter("username");
String pwd=request.getParameter("pwd");

if(!username.equals("") && !pwd.equals("")){
	response.sendRedirect("login_ok.jsp");
} else{
	response.sendError(500,"请输入登录验证信息");
}

%>
</body>
</html>
