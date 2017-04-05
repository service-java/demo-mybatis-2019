<%@ page contentType="text/html; charset=utf-8" 
	language="java" import="java.sql.*" 
	errorPage="" %>
	
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>用户登录</title>
</head>
<body>

<form id="form1" name="form1" method="post" action="login_deal.jsp">
  用户：
  <input name="username" type="text" id="username" />
  <br />
  <br />
  
  密码：
  <input name="pwd" type="text" id="pwd" />
  <br />
  <br />
  
  <input type="submit" name="Submit" value="提交" />
  <input type="reset" name="Submit2" value="重置" />
</form>

</body>
</html>
