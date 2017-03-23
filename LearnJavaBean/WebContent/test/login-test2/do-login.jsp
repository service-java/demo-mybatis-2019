<%@ page contentType="text/html;charset=gb2312" %>
<jsp:useBean id="user" class="com.User">
	<jsp:setProperty name="user" property="*"/>
</jsp:useBean>
<center>
	<b>ำรปงร๛ฃบ</b><jsp:getProperty name="user" property="userName"/>
	<b>รÜย๋ฃบ</b><jsp:getProperty name="user" property="userPass"/>	
</center>

<p>
