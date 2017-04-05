<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="com.MyTools" %>
<%
	String title=request.getParameter("title");					//获取留言标题
	String content=request.getParameter("content");				//获取留言内容
	if(title==null)title="";
	if(content==null)content="";
	
	title=MyTools.change(title);		//调用change()方法转换标题中的“<”和“>”字符
	content=MyTools.change(content);	//调用change()方法转换内容中的“<”和“>”字符
%>
标题：<%=title%>
<br>
内容：<%=content%>

<p>
<a href="index.jsp">重新输入</a>

