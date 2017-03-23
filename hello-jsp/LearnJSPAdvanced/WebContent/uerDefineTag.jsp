<%@ page language="java"  pageEncoding="GBK"%>
<%@ taglib uri="showDateUri" prefix="wghDate" %>
<html>
  <head><title>调用自定义标签显示当前系统日期</title></head>
 <body>
今天是<wghDate:showDate/>
<% int num=6;
request.setAttribute("no",num);
%>
</body>
</html>
