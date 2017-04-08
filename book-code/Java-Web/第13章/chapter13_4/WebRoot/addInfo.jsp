<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#one {
	margin:auto;
	background:url(images/bg.jpg);
	background-repeat:no-repeat;
	height:392px;
	width:722px;	
}
#two {
	position:relative;
	font-size: 12px;
	margin-top:150px;
	margin-left:190px;	
	width:500px;	
	float:left;
	font-size: 16px;
}
#three {
 position:relative;
 width:200px; 
 margin-top:150px;
 margin-right:60px;
 float:right;
}
</style>
  </head>
  
  <body>
  <div id="one">
		<div id="two">
		<h3 align="center">添加用户信息</h3>
			<form action="servlet/AddInfoServlet">
    	<table align="center" border="1">
    	<tr>
    		<th>姓名</th>
    		<td><input type="text" name = "name"></td>
    	</tr>
    	<tr>
    		<th>密码</th>
    		<td><input type="password" name = "pass"></td>
    	</tr>
    	<tr>
    		<td></td>
    		<td align="center"><input type="reset" value = "重置"><input type="submit" value = "提交"><a href="index.jsp">返回</a></td>
    	</tr>
    </table>
    </form>
		</div>
	<div id="three">
		</div> 
	</div>
  </body>
</html>
