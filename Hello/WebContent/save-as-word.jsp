<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>

<%
if(request.getParameter("submit1")!=null){
	response.setContentType("application/msword;charset=gb2312");
}
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>保存为word</title>
</head>
<body>
平平淡淡才是真！
快快乐乐才是福！
<form action="" method="post" name="form1">
	<input name="submit1" type="submit" id="submit1" value="保存为word" /></input>
</form>

</body>
</html>
