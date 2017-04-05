<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<%
    request.setCharacterEncoding("utf-8"); // 解决中文乱码问题
    
 	String title=request.getParameter("title");				//获取留言标题
	String content=request.getParameter("content");			//获取留言内容
	if(title==null)title="";
	if(content==null)content="";
	
	title=title.replace("<","&lt;");						//替换标题中的“<”字符
	title=title.replace(">","&gt;");						//替换标题中的“>”字符
	content=content.replace("<","&lt;");					//替换内容中的“<”字符
	content=content.replace(">","&gt;");					//替换内容中的“>”字符
%>
标题：<%=title%>
<br>
内容：<%=content%>

<p>
<a href="index.jsp">重新输入</a>
