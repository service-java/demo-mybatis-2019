<%@ page contentType="text/html; charset=gb2312" %>
<%@ page language="java" %>
<%
  Integer count = null; 
  //同步处理
  synchronized (application)
  {
    //从内存当中读取访问量
    count = (Integer) application.getAttribute("basic.counter"); 
    if (count == null) 
    count = new Integer(0); 
    count = new Integer(count.intValue() + 1);
    //将访问量保存到内存当中
    application.setAttribute("basic.counter", count);
  }
%>
<html>
<head>
<title>简单计数器</title>
</head> 
<body> 
<center>
<font size=10 color=blue>简单计数器</font>
<br>
<hr>
<br>
<font size=5 color=blue>您好！您是本站的第 <%= count %> 位客人</font>
</center>
</body> 
</html>
