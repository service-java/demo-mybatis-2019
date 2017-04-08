<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册成功</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <style>
    	body,td,legend {
    		font-size:15px
    	}
    	body{
    		margin-top: 0
    	}
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
	margin-left:300px;	
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
		<div id="two" style="width: 350">
		 <fieldset>
  <legend>登录信息->联系信息->兴趣爱好-><b style="color:red">注册信息</b></legend><br>
用户名：${user.userName }<br>
密码：${user.password }<br>
邮箱：${user.mail }<br>
手机：${user.tel }<br>
地址：${user.address }<br>
兴趣爱好：${user.favor }<br>
</fieldset>
		</div>
	<div id="three">
		</div> 
	</div>

  </body>
</html>
