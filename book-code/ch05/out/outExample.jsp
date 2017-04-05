<%@ page contentType="text/html; charset=GB2312"%>
<html>
<head>
<title>out对象 应用实例</title>
</head>
<body>
<%
	response.setContentType("text/html");
	out.println("out对象应用实例：<br><hr>");
	out.println("<br>out.println(boolean):");
	out.println(true);
	out.println("<br>out.println(char):");
	out.println('a');
	out.println("<br>out.println(char[]):");
	out.println(new char[] { 'a', 'b' });
	out.println("<br>out.println(double):");
	out.println(5.66d);
	out.println("<br>out.println(float):");
	out.println(36.8f);
	out.println("<br>out.println(int):");
	out.println(8);
	out.println("<br>out.println(long):");
	out.println(123456789123456L);
	out.println("<br>out.println(object):");
	out.println(new java.util.Date());
	out.println("<br>out.println(string):");
	out.println("hello jsp");
	out.println("<br>out.newLine():");
	out.newLine();
	out.flush();
	out.println("<br>调用out.flush()");
%>
</body>
</html>
