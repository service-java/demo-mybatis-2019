<%@page contentType="text/html;charset=gb2312" %>

<%
	String name=request.getParameter("userName");	  	//获取表单中userName字段值
	if(name==null)name="";
	String password=request.getParameter("userPass");	//获取表单中userPass字段值
	if(password==null)password="";
%>
<center>
	<b>用户名：</b><%=name %>								<!-- 输出用户名 -->
	<b>密码：</b><%=password %>							<!-- 输出密码 -->
</center>

<p>
<a href="index.jsp">重新输入</a>
