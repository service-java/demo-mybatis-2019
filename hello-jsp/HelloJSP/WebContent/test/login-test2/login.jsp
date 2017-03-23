<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户登录</title>
</head>

<body>
<form id="form1" name="form1" method="post" action="login_deal.jsp">
  用户名：
  <input name="username" type="text" id="username" />
  <br />
  <br />
  密&nbsp;&nbsp;码：
  <input name="pwd" type="text" id="pwd" />
  <br />
  <br />
  <input type="submit" name="Submit" value="提交" />
  <input type="reset" name="Submit2" value="重置" />
</form>
</body>
</html>
