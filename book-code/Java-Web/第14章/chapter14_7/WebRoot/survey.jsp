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
    
    <title>兴趣爱好</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><style>
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
  <legend>登录信息->联系信息-><b style="color:red">兴趣爱好</b>->注册信息</legend><br>
    <form:form>
    	
  	<form:checkbox path="favor" value="看书"/>看书<br>
  	<form:checkbox path="favor" value="看电视"/>看电视<br>
  	<form:checkbox path="favor" value="上网"/>上网<br>
  	<form:checkbox path="favor" value="聊天"/>聊天<br>
  	<form:checkbox path="favor" value="看电影"/>看电影<br>
  	<form:checkbox path="favor" value="画画"/>画画<br>
  	<form:checkbox path="favor" value="逛街"/>逛街<br>
  	 <input type="submit" name="_target1" value="上一步">
  	 <input type="submit" name="_finish" value="确定"/>
  	 <input type="submit" name="_cancel" value="取消"/>
   </form:form>
   </fieldset>
		</div>
	<div id="three">
		</div> 
	</div>
 
  </body>
</html>
