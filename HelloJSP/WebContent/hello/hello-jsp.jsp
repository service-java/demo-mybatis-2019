<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Date,java.text.*" %> <%-- 导入用到的类包文件 --%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>HTML5 Page Title</title>
  
  <!-- <link rel="stylesheet" href="css/default.css"> --> 
</head>
<body>

<%
	int type = 0;
	if(type == 0) {
%>
<h1>你是用户</h1>
<%
	}
	else {
		out.print("<h1>你是管理员</h1>");
	}
	
	Date nowday=new Date();  			//获取当前日期
	// int hour=nowday.getHours();			//获取日期中的小时
	SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //定义日期格式化对象
	String time= ft.format(nowday);	//将指定日期格式化为”yyyy-MM-dd HH:mm:ss”形式

%>
<p>当前时间<%=time%></p>


<!-- <script src="js/default.min.js"></script>  -->
	
</body>
</html>