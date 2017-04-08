<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"  %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>基本信息</title>
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
    		font-size:12px
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
  <legend><b style="color:red">登录信息</b>->联系信息->兴趣爱好->注册信息</legend><br>
   <form:form>
   	<table border="0">
   		<tr>
   		<td>用户名</td><td><form:input path="userName" cssClass="fromStyle"/>
   		<form:errors path="userName" cssStyle="color:red"/></td>
   		</tr>
   		<tr>
   		<td>密码</td><td><form:password path="password" size="21"/>
   		<form:errors path="password" cssStyle="color:red"/></td>
   		</tr>
   		<tr>
   		<td>确认密码</td><td><form:password path="pass" size="21"/>
   		<form:errors path="pass" cssStyle="color:red"/></td>
   		</tr>
   		<tr>
   		<td>邮箱</td><td><form:input path="mail"/>
   		<form:errors path="mail" cssStyle="color:red"/></td>
   		</tr>
   		<tr>
   		<td colspan="2"><input type="submit" name="_target1" value="下一步"/>
   		<input type="submit" name="_cancel" value="取消"/></td></tr>
   	</table>
   </form:form>
   </fieldset>
		</div>
	<div id="three">
		</div> 
	</div>

  
  </body>
</html>
