<%@ page contentType="text/html;charset=utf-8"%>

<form action="do-word.jsp" method="post">
	<h2>用户留言</h2>
	标题：<input type="text" name="title" size="26">
	<br>
	内容：<textarea name="content" rows="5" cols="25"></textarea>
	<br><br>
	<input type="submit" value="留言">
	<input type="reset" value="重置">
</form>
