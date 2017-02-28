<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>处理结果</title>
</head>

<body>
<%
out.print("缓冲区大小："+response.getBufferSize()+"<br>");
out.print("缓冲区内容强制提交前<br>");
out.print("输出内容是否提交："+response.isCommitted()+"<br>");
response.flushBuffer();
out.print("缓冲区内容强制提交后<br>");
out.print("输出内容是否提交："+response.isCommitted()+"<br>");
%>

</body>
</html>
